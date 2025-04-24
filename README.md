# HW1（網路範例）

利用軟體控制 LED 閃爍。

---

##  Block Design  
![Block Design](https://github.com/yihong92/SOC/blob/main/HW1_%E7%B6%B2%E8%B7%AF%E7%AF%84%E4%BE%8B/Block%20Design.png)

---

##  VHDL 檔案  
🔗 [LED.vhd](https://github.com/yihong92/SOC/blob/main/HW_1/HW_1.srcs/sources_1/new/LED.vhd)  
**說明：**  
- 使用 `sw` 控制是否接收 GPIO 的輸出  
- GPIO 輸出的 LED 訊號傳送至 `LED_input`，再從 `LED_input` 傳至 `LED_output`

---

##  C 程式碼  
🔗 [main.c](https://github.com/yihong92/SOC/blob/main/HW_1/HW_1.sdk/LED/src/main.c)  
**說明：**  
- 控制 LED 閃爍次數與顯示模式（0x00 ~ 0xFF）  
- 初始狀態為全亮，閃爍完成後亦回復為全亮

---

##  Demo 影片  
[觀看影片](https://www.youtube.com/watch?v=5cisn80MZtw)

---

# HW1

利用軟體寫入計數值至 `s_reg1`，RTL 接收後開始計數，並透過 LED 顯示結果。計數完成後傳送 `done` 訊號至 `s_reg2`，以回傳至軟體。

---

##  Block Design  
![Block Design]()

---

##  VHDL 檔案  
🔗 
**說明：**  


---

##  C 程式碼  
🔗  
**說明：**  


---

##  Demo 影片  

