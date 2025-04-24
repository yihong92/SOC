#include "xparameters.h"
#include "xil_io.h"
#include <stdio.h>
#include <unistd.h>

#define IP_BASE_ADDR XPAR_MYIP_0_S00_AXI_BASEADDR

int main() {
    printf("=== Starting AXI IP Counter Test ===\n");

    // Step 1: Write count_max to slv_reg0
    unsigned int count_max = 10;
    printf("Writing count_max: %u to slv_reg0 (offset 0x00)\n", count_max);
    Xil_Out32(IP_BASE_ADDR, count_max);
    printf("Write completed.\n");

    // Step 2: Poll slv_reg1 (count_value) and slv_reg2 (done)
    unsigned int count_value = 0;
    unsigned int done = 0;
    printf("Starting to poll counter status...\n");
    printf("Expected counting time: ~33.5 seconds (100 counts, ~335ms per count)\n");

    while (done == 0) {
        count_value = Xil_In32(IP_BASE_ADDR + 0x04); // Read slv_reg1
        done = Xil_In32(IP_BASE_ADDR + 0x08);       // Read slv_reg2
        printf("[Status] count_value: %u, done: %u\n", count_value, done);
        usleep(500000); // 500ms delay to match ~335ms counting period
    }

    // Step 3: Verify final state
    count_value = Xil_In32(IP_BASE_ADDR + 0x04);
    printf("Counting completed!\n");
    printf("Final count_value (should be 0): %u\n", count_value);
    printf("Done flag: %u\n", done);

    printf("=== Test Finished ===\n");
    while (1);
    return 0;
}
