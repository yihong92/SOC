# HW2_中斷

利用軟體端輸入事件決定是否中斷，當輸入ch時slv_reg3 = 1，硬體收到後中斷計數，並利用輸出irq訊號通知軟體端已中斷，清除slv_reg3等

---

##  Block Design  
![Block Design](https://github.com/yihong92/SOC/blob/main/HW2/HW2_%E5%AE%8C%E6%88%90%E4%B8%AD%E6%96%B7/Block_design.png)

---

##  VHDL 程式碼  
🔗 [counter_interrupt.vhd](https://github.com/yihong92/SOC/blob/main/HW2/HW2_%E5%AE%8C%E6%88%90%E4%B8%AD%E6%96%B7/ip_repo/HW2_interrupt_1.0/hdl/counter_interrupt.vhd)  
🔗 [HW2_interrupt_v1_0_S00_AXI.vhd](https://github.com/yihong92/SOC/blob/main/HW2/HW2_%E5%AE%8C%E6%88%90%E4%B8%AD%E6%96%B7/ip_repo/HW2_interrupt_1.0/hdl/HW2_interrupt_v1_0_S00_AXI.vhd)  
🔗 [HW2_interrupt_v1_0.vhd](https://github.com/yihong92/SOC/blob/main/HW2/HW2_%E5%AE%8C%E6%88%90%E4%B8%AD%E6%96%B7/ip_repo/HW2_interrupt_1.0/hdl/HW2_interrupt_v1_0.vhd)  
🔗 [HW2_interrupt_v1_0_S_AXI_INTR.vhd](https://github.com/yihong92/SOC/blob/main/HW2/HW2_%E5%AE%8C%E6%88%90%E4%B8%AD%E6%96%B7/ip_repo/HW2_interrupt_1.0/hdl/HW2_interrupt_v1_0_S_AXI_INTR.vhd)  
**說明：**  
- counter_interrupt 模組 : 根據 HW1 的 counter 模組新增了接收中斷的訊號，當收到 stop 訊號就中斷計數  
- 底層 vhd               : 沿用 HW1 暫存器的功能，新增了 slv_reg3 ，用來讀取軟體端的中斷訊號 ，還有 intr 輸出訊號用來連接外部中斷器 
- 頂層 vhd               : 輸出實體 led 接腳 
- 中斷 vhd               : 從 counter_interrupt 加入外部中斷 intr

---

##  C 程式碼  
🔗 [helloworld.c](https://github.com/yihong92/SOC/blob/main/HW2/HW2_%E5%AE%8C%E6%88%90%E4%B8%AD%E6%96%B7/HW2_interrupt/HW2_interrupt.sdk/HW2_interrupt/src/helloworld.c)  
**說明：**  
- 寫入 count_max 到 s_reg0，s_reg1 用來讀取目前計數值，s_reg2 用來讀取計數完成訊號，s_reg3輸出 stop 訊號給硬體，接受硬體發送的中斷完成訊號

---

##  Demo 影片  
🔗[demo](https://www.youtube.com/shorts/D0Mgpbf1fFY)

---

