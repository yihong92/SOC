#include "xparameters.h"
#include "xgpio.h"
#include "xuartps.h"
#include "xil_printf.h"
#include "sleep.h"
#include <stdlib.h>
#include <string.h>

#define LED_DEVICE_ID  XPAR_AXI_GPIO_0_DEVICE_ID
#define LED_CHANNEL 1
#define UART_DEVICE_ID XPAR_PS7_UART_1_DEVICE_ID
#define UART_BASEADDR XPAR_PS7_UART_1_BASEADDR

XGpio Gpio;  // GPIO object
XUartPs UartPs;  // UART object

// 自定義輸入函數，確保正確接收數據
int custom_input(u8 *buffer, int buffer_size) {
    int index = 0;
    u8 ch;

    while (index < buffer_size - 1) {
        // 等待接收字節
        while (XUartPs_IsReceiveData(UART_BASEADDR) == 0);

        // 讀取字節
        ch = XUartPs_RecvByte(UART_BASEADDR);

        // 處理退格鍵
        if (ch == '\b' || ch == 127) {
            if (index > 0) {
                xil_printf("\b \b");  // 刪除上一個字符
                index--;
            }
            continue;
        }

        // 處理回車和換行
        if (ch == '\r' || ch == '\n') {
            buffer[index] = '\0';
            xil_printf("\r\n");
            break;
        }

        // 顯示並存儲字符
        xil_printf("%c", ch);
        buffer[index++] = ch;
    }

    return index;
}

int main() {
    int status;
    u8 blink_count = 0;
    u8 led_pattern = 0;
    u8 i;
    u8 rx_buffer[10];  // 接收緩衝區

    // 初始化 UART
    XUartPs_Config *UartConfig = XUartPs_LookupConfig(UART_DEVICE_ID);
    status = XUartPs_CfgInitialize(&UartPs, UartConfig, UartConfig->BaseAddress);
    if (status != XST_SUCCESS) {
        xil_printf("UART initialization failed!\r\n");
        return XST_FAILURE;
    }

    // 初始化 GPIO
    status = XGpio_Initialize(&Gpio, LED_DEVICE_ID);
    if (status != XST_SUCCESS) {
        xil_printf("GPIO initialization failed!\r\n");
        return XST_FAILURE;
    }
    XGpio_SetDataDirection(&Gpio, LED_CHANNEL, 0x00); // 設定 LED 為輸出

    // 初始 LED 全亮
    XGpio_DiscreteWrite(&Gpio, LED_CHANNEL, 0xFF);
    xil_printf("LED initial state: All ON (0xFF)\r\n");

    while (1) {
        // 輸入閃爍次數
        xil_printf("\r\nPlease enter number of blinks (0~255): ");

        // 清空接收緩衝區
        memset(rx_buffer, 0, sizeof(rx_buffer));

        // 等待並接收數據
        custom_input(rx_buffer, sizeof(rx_buffer));

        // 將接收到的字節轉換為數字
        blink_count = atoi((char*)rx_buffer);

        xil_printf("Blink count: %d\r\n", blink_count);

        // 輸入 LED 模式
        xil_printf("Please enter LED display mode (0x00 ~ 0xFF): ");

        // 清空接收緩衝區
        memset(rx_buffer, 0, sizeof(rx_buffer));

        // 等待並接收數據
        custom_input(rx_buffer, sizeof(rx_buffer));

        // 將接收到的字節轉換為十六進制數字
        led_pattern = (u8)strtol((char*)rx_buffer, NULL, 16);

        xil_printf("LED pattern: 0x%02X\r\n", led_pattern);

        xil_printf("\r\nStarting blink %d times...\r\n", blink_count);

        for (i = 0; i < blink_count; i++) {
            XGpio_DiscreteWrite(&Gpio, LED_CHANNEL, led_pattern);
            usleep(500000);
            XGpio_DiscreteWrite(&Gpio, LED_CHANNEL, 0x00);
            usleep(500000);
        }

        // 閃爍結束，恢復全亮
        XGpio_DiscreteWrite(&Gpio, LED_CHANNEL, 0xFF);
        xil_printf("Blink completed, LED back to all ON (0xFF)\r\n");
    }
    return 0;
}
