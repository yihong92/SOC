# HW1

利用軟體設定計數值寫入s_reg0，RTL收到計數值後開始計數且顯示在輸出的led，計數完畢回傳done信號給s_reg2回傳給軟體，至於s_reg1用來輪詢當前計數值。

---

##  Block Design  
![Block Design](https://github.com/yihong92/SOC/blob/main/HW1/HW1/block%20design.png)

---

##  VHDL 程式碼  
🔗 [counter.vhd](https://github.com/yihong92/SOC/blob/main/HW1/ip_repo/myip_1.0/hdl/counter.vhd)  
🔗 [myip_v1_0_S00_AXI.vhd](https://github.com/yihong92/SOC/blob/main/HW1/ip_repo/myip_1.0/hdl/myip_v1_0_S00_AXI.vhd)  
🔗 [myip_v1_0.vhd](https://github.com/yihong92/SOC/blob/main/HW1/ip_repo/myip_1.0/hdl/myip_v1_0.vhd) 
**說明：**  
- counter 模組 : count_max 用來接收 s_reg0 的資料，收到資料 conting = 1 開始計數 
- 底層 vhd     : 實例化 coounter 模組，s_reg0 用來接收計數值，s_reg1 回傳 RTL 當前計數值，s_reg2 回傳計數完畢，輸出 LED_value 給頂層用於顯示實體 led 
- 頂層 vhd     : 輸出實體 led 接腳

---

##  C 程式碼  
🔗 [main.c](https://github.com/yihong92/SOC/blob/main/HW1/HW1/HW1.sdk/led/src/main.c)  
**說明：**  
- 寫入 count_max 到 s_reg0，s_reg1 用來輪詢目前計數值，s_reg2 用來讀取計數完成訊號 

---

##  Demo 影片  
🔗[demo](https://youtube.com/shorts/MSCzvhOvn9E)

---

