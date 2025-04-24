# HW1（網路範例）

利用軟體設定計數值寫入s_reg1，RTL收到計數值後開始計數且顯示在輸出的led，計數完畢回傳done信號給s_reg2回傳給軟體。

---

##  Block Design  
![Block Design](https://github.com/yihong92/SOC/blob/main/HW1/HW1/block%20design.png)

---

##  VHDL 檔案  
🔗 [counter.vhd](https://github.com/yihong92/SOC/blob/main/HW1/ip_repo/myip_1.0/hdl/counter.vhd)  
🔗 [myip_v1_0_S00_AXI.vhd](https://github.com/yihong92/SOC/blob/main/HW1/ip_repo/myip_1.0/hdl/myip_v1_0_S00_AXI.vhd)
🔗 [myip_v1_0.vhd](https://github.com/yihong92/SOC/blob/main/HW1/ip_repo/myip_1.0/hdl/myip_v1_0.vhd)
**說明：**  
- `count_max` 用來接收s_reg1的資料，收到資料 `conting` = 1 開始計數
- GPIO 輸出的 LED 訊號傳送至 `LED_input`，再從 `LED_input` 傳至 `LED_output`

---

##  C 程式碼  
🔗 [main.c](https://github.com/yihong92/SOC/blob/main/HW1_%E7%B6%B2%E8%B7%AF%E7%AF%84%E4%BE%8B/HW_1.sdk/LED/src/main.c)  
**說明：**  
- 控制 LED 閃爍次數與顯示模式（0x00 ~ 0xFF）  
- 初始狀態為全亮，閃爍完成後亦回復為全亮

---

##  Demo 影片  
🔗[demo](https://www.youtube.com/watch?v=5cisn80MZtw)

---

