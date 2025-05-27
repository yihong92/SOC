#include "xparameters.h"
#include "xuartps.h"
#include "xil_io.h"
#include <stdio.h>
#include <string.h>
#include <unistd.h>

#define IP_BASE_ADDR XPAR_HW2_INTERRUPT_0_S00_AXI_BASEADDR // IP 基地址
#define INTR_BASE_ADDR 0x43C10000 // 中斷控制器基地址
#define UART_DEVICE_ID XPAR_XUARTPS_0_DEVICE_ID // UART 設備 ID

// 中斷控制器暫存器偏移
#define GIER 0x00  // 全局中斷啟用暫存器
#define IER  0x04  // 中斷啟用暫存器
#define ISR  0x08  // 中斷狀態暫存器
#define IAR  0x0C  // 中斷確認暫存器
#define IPR  0x10  // 中斷掛起暫存器

int main() {
    printf("=== Starting AXI IP Counter Test with Interrupt ===\n"); // 印出程式啟動訊息

    // 初始化 UART
    XUartPs uart;
    XUartPs_Config *config = XUartPs_LookupConfig(UART_DEVICE_ID); // 查找 UART 配置
    XUartPs_CfgInitialize(&uart, config, config->BaseAddress); // 初始化 UART

    // 初始化中斷控制器
    printf("Configuring interrupt controller...\n"); // 配置中斷控制器訊息
    Xil_Out32(INTR_BASE_ADDR + GIER, 0x1); // 啟用全局中斷
    Xil_Out32(INTR_BASE_ADDR + IER, 0x1);  // 啟用中斷 0
    Xil_Out32(INTR_BASE_ADDR + IAR, 0x1);  // 清除任何掛起的中斷

    unsigned int count_max = 20; // 最大計數值
    int interrupted = 0; // 中斷標誌
    int counting_done = 0; // 計數完成標誌

    while (1) {
        if (!interrupted && !counting_done) { // 僅在未中斷且未完成時執行
            // 寫入 count_max
            printf("Writing count_max: %u to slv_reg0 (offset 0x00)\n", count_max); // 寫入最大計數值
            Xil_Out32(IP_BASE_ADDR, count_max); // 寫入 slv_reg0
            Xil_Out32(IP_BASE_ADDR + 0x0C, 0x0); // 清除 stop
            printf("Write completed. Please press the button to start counting...\n"); // 提示按鍵啟動

            // 輪詢計數器狀態
            unsigned int count_value = 0; // 當前計數值
            unsigned int done = 0; // 完成信號
            unsigned int intr_status = 0; // 中斷狀態
            printf("Starting to poll counter status...\n"); // 開始輪詢

            while (!interrupted && !counting_done) {
                count_value = Xil_In32(IP_BASE_ADDR + 0x04); // 讀取 slv_reg1 (計數值)
                done = Xil_In32(IP_BASE_ADDR + 0x08);        // 讀取 slv_reg2 (完成信號)
                intr_status = Xil_In32(INTR_BASE_ADDR + ISR); // 讀取中斷狀態

                printf("[Status] count_value: %u, done: %u, intr_status: %u\n", count_value, done, intr_status); // 印出輪詢狀態

                // 檢查 UART 輸入
                if (XUartPs_IsReceiveData(config->BaseAddress)) {
                    char ch = XUartPs_RecvByte(config->BaseAddress); // 讀取 UART 字元
                    printf("Received UART input (%c), triggering stop\n", ch); // 提示收到輸入
                    Xil_Out32(IP_BASE_ADDR + 0x0C, 0x1); // 設置 slv_reg3 觸發中斷
                }

                // 檢查中斷
                if (intr_status & 0x1) {
                    printf("Interrupt detected! Acknowledging interrupt...\n"); // 提示中斷觸發
                    Xil_Out32(INTR_BASE_ADDR + IAR, 0x1); // 確認中斷
                    interrupted = 1; // 設置中斷標誌
                }

                // 檢查計數完成
                if (done) {
                    counting_done = 1; // 標記計數完成
                    printf("Counting completed! Final count_value: %u\n", count_value); // 提示計數完成
                }

                usleep(500000); // 500ms 延遲
            }
        }

        // 中斷或計數完成後等待重啟
        if (interrupted || counting_done) {
            printf("%s. Type 're' to restart...\n", interrupted ? "Counting interrupted" : "Counting completed"); // 提示等待重啟
            static char input_buf[4] = {0}; // 輸入緩衝區
            static int input_idx = 0; // 緩衝區索引

            if (XUartPs_IsReceiveData(config->BaseAddress)) {
                char ch = XUartPs_RecvByte(config->BaseAddress); // 讀取 UART 字元
                if (ch == '\r' || ch == '\n') { // 檢測回車或換行
                    input_buf[input_idx] = '\0'; // 結束字串
                    if (strcmp(input_buf, "re") == 0) { // 檢查是否為 "re"
                        printf("Restarting counting...\n"); // 提示重啟
                        interrupted = 0; // 清除中斷標誌
                        counting_done = 0; // 清除完成標誌
                        input_idx = 0; // 重置緩衝區
                        Xil_Out32(INTR_BASE_ADDR + IAR, 0x1); // 清除中斷
                    } else {
                        input_idx = 0; // 重置緩衝區
                    }
                } else if (input_idx < 3) {
                    input_buf[input_idx++] = ch; // 儲存字元
                }
            }
        }

        usleep(500000); // 500ms 檢查 UART
    }

    return 0;
}
