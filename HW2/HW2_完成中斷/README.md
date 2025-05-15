# HW2_中斷

利用軟體設定計數值寫入 s_reg0，RTL 收到計數值後開始計數且顯示在輸出的 led，計數完畢回傳 done 信號給 s_reg2 回傳給軟體，至於 s_reg1 用來輪詢當前計數值。

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
- counter_interrupt 模組 : count_max 接收 s_reg0 的資料，收到資料且按下 btn 後 conting = 1 開始計數(cnt = cnt + 1)，計數完 cnt 歸零，counting = 0(暫停計數)、done_int = 1(計數結束) 
- 底層 vhd               : 實例化 coounter 模組，s_reg0 用來接收計數值，s_reg1 回傳 RTL 當前計數值，s_reg2 回傳計數完畢，輸出 LED_value 給頂層用於顯示實體 led 
- 頂層 vhd               : 輸出實體 led 接腳，輸入 btn 接腳
- 中斷 vhd               :

---

##  C 程式碼  
🔗 [main.c](https://github.com/yihong92/SOC/blob/main/HW2/HW2_%E5%AE%8C%E6%88%90%E4%B8%AD%E6%96%B7/HW_interrupt/HW_interrupt.sdk/interrupt/src/main.c)  
**說明：**  
- 寫入 count_max 到 s_reg0，s_reg1 用來讀取目前計數值，s_reg2 用來讀取計數完成訊號 

---

##  Demo 影片  
🔗[demo](https://youtube.com/shorts/F11rs2UMooo)

---

