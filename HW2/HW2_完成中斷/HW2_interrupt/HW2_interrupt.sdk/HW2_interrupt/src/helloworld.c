#include "xparameters.h"
#include "xuartps.h"
#include "xscugic.h"
#include "xil_io.h"
#include "xil_exception.h"
#include <stdio.h>
#include <string.h>
#include <unistd.h>

#define IP_BASE_ADDR XPAR_HW2_INTERRUPT_0_S00_AXI_BASEADDR
#define INTR_BASE_ADDR 0x43C10000
#define INTR_ID XPAR_FABRIC_HW2_INTERRUPT_0_IRQ_INTR
#define UART_DEVICE_ID XPAR_XUARTPS_0_DEVICE_ID

static XScuGic Intc;
static volatile int interrupted = 0;
static volatile int counting_done = 0;

void InterruptHandler(void *data) {
    printf("[Interrupt] UART input triggered!\n");
    Xil_Out32(INTR_BASE_ADDR + 0x0C, 0x1);
    Xil_Out32(IP_BASE_ADDR + 0x0C, 0x1);
    usleep(10);
    Xil_Out32(INTR_BASE_ADDR + 0x0C, 0x1);
    Xil_Out32(IP_BASE_ADDR + 0x0C, 0x1);
    unsigned int intr_sts = Xil_In32(INTR_BASE_ADDR + 0x08);
    interrupted = 1;
    printf("After clear: intr_sts: %u\n", intr_sts & 0x1);
}

int SetupInterruptSystem(XScuGic *IntcInstancePtr) {
    XScuGic_Config *IntcConfig = XScuGic_LookupConfig(XPAR_PS7_SCUGIC_0_DEVICE_ID);
    if (!IntcConfig) return XST_FAILURE;
    int Status = XScuGic_CfgInitialize(IntcInstancePtr, IntcConfig, IntcConfig->CpuBaseAddress);
    if (Status != XST_SUCCESS) return XST_FAILURE;
    XScuGic_SetPriorityTriggerType(IntcInstancePtr, INTR_ID, 0x00, 0x3);
    Status = XScuGic_Connect(IntcInstancePtr, INTR_ID, (Xil_InterruptHandler)InterruptHandler, NULL);
    if (Status != XST_SUCCESS) return XST_FAILURE;
    XScuGic_Enable(IntcInstancePtr, INTR_ID);
    Xil_Out32(INTR_BASE_ADDR + 0x00, 0x1);
    Xil_Out32(INTR_BASE_ADDR + 0x04, 0x1);
    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, IntcInstancePtr);
    Xil_ExceptionEnable();
    return XST_SUCCESS;
}

int main() {
    printf("=== AXI IP Counter Test ===\n");

    XUartPs uart;
    XUartPs_Config *config = XUartPs_LookupConfig(UART_DEVICE_ID);
    XUartPs_CfgInitialize(&uart, config, config->BaseAddress);

    if (SetupInterruptSystem(&Intc) != XST_SUCCESS) {
        printf("Interrupt setup failed\n");
        return 1;
    }

    unsigned int count_max = 20;

    while (1) {
        if (!interrupted && !counting_done) {
            printf("Writing count_max: %u\n", count_max);
            Xil_Out32(IP_BASE_ADDR, count_max);
            Xil_Out32(IP_BASE_ADDR + 0x0C, 0x0);
            printf("Press btn to start counting\n");

            unsigned int count_value, done;
            while (!interrupted && !counting_done) {
                count_value = Xil_In32(IP_BASE_ADDR + 0x04);
                done = Xil_In32(IP_BASE_ADDR + 0x08);
                printf("[Poll] count: %u, done: %u\n", count_value, done);

                if (XUartPs_IsReceiveData(config->BaseAddress)) {
                    char ch = XUartPs_RecvByte(config->BaseAddress);
                    printf("UART input (%c), triggering interrupt\n", ch);
                    Xil_Out32(IP_BASE_ADDR + 0x0C, 0x1);
                }

                if (done) {
                    counting_done = 1;
                    printf("Counting complete: %u\n", count_value);
                }

                usleep(500000);
            }
        }

        if (interrupted || counting_done) {
            printf("%s. Type 're' to restart...\n", interrupted ? "Counting interrupted" : "Counting complete");
            static char input_buf[4] = {0};
            static int input_idx = 0;

            if (XUartPs_IsReceiveData(config->BaseAddress)) {
                char ch = XUartPs_RecvByte(config->BaseAddress);
                if (ch == '\r' || ch == '\n') {
                    input_buf[input_idx] = '\0';
                    if (strcmp(input_buf, "re") == 0) {
                        printf("Restarting count...\n");
                        interrupted = 0;
                        counting_done = 0;
                        input_idx = 0;
                        Xil_Out32(INTR_BASE_ADDR + 0x0C, 0x1);
                        Xil_Out32(IP_BASE_ADDR + 0x0C, 0x0);
                    } else {
                        input_idx = 0;
                    }
                } else if (input_idx < 3) {
                    input_buf[input_idx++] = ch;
                }
            }
        }

        usleep(500000);
    }

    return 0;
}
