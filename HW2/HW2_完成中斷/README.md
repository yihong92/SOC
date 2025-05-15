# HW2_中斷(未完成)

利用按鈕事件決定是否中斷，當按鈕按下時會輸出 irq 信號至 Zynq PS，通過中斷控制器傳送 irq 到 GIC

---

##  Block Design  
![Block Design](https://github.com/yihong92/SOC/blob/main/HW2/HW2_%E5%AE%8C%E6%88%90%E4%B8%AD%E6%96%B7/Block_design.png)

---

##  VHDL 程式碼  
🔗 [counter_interrupt.vhd](https://github.com/yihong92/SOC/blob/main/HW2/HW2_%E5%AE%8C%E6%88%90%E4%B8%AD%E6%96%B7/ip_repo/interrupt_1.0/hdl/counter_interrupt.vhd)  
🔗 [interrupt_v1_0_S00_AXI.vhd](https://github.com/yihong92/SOC/blob/main/HW2/HW2_%E5%AE%8C%E6%88%90%E4%B8%AD%E6%96%B7/ip_repo/interrupt_1.0/hdl/interrupt_v1_0_S00_AXI.vhd)  
🔗 [interrupt_v1_0.vhd](https://github.com/yihong92/SOC/blob/main/HW2/HW2_%E5%AE%8C%E6%88%90%E4%B8%AD%E6%96%B7/ip_repo/interrupt_1.0/hdl/interrupt_v1_0.vhd) 
🔗 [interrupt_v1_0_S_AXI_INTR.vhd](https://github.com/yihong92/SOC/blob/main/HW2/HW2_%E5%AE%8C%E6%88%90%E4%B8%AD%E6%96%B7/ip_repo/interrupt_1.0/hdl/interrupt_v1_0_S_AXI_INTR.vhd)
**說明：**  
- counter_interrupt 模組 : 根據 HW1 的 counter 模組新增了停止按鈕與輸出中斷的訊號，當 stop_btn 按下去，輸出 irq 訊號 
- 底層 vhd               : 沿用 HW1 暫存器的功能，新增了 slv_reg3 ，用來讀取 irq_int 
- 頂層 vhd               : 輸出實體 led 接腳與 irq 訊號，輸入 btn、stop_btn 接腳
- 中斷 vhd               : 處理 interrupt_v1_0_S00_AXI.vhd 的中斷信號（intr_in)，通過 irq 將中斷傳遞到 Zynq PS

---

##  C 程式碼  
🔗 [main.c](https://github.com/yihong92/SOC/blob/main/HW2/HW2_%E5%AE%8C%E6%88%90%E4%B8%AD%E6%96%B7/HW_interrupt/HW_interrupt.sdk/interrupt/src/main.c)  
**說明：**  
- 寫入 count_max 到 s_reg0，s_reg1 用來讀取目前計數值，s_reg2 用來讀取計數完成訊號 

---

##  Demo 影片  
🔗[demo](https://youtube.com/shorts/F11rs2UMooo)

---

