## HW_1
利用軟體控制led閃爍

Block Design:![image](https://github.com/yihong92/SOC/blob/main/HW1_%E7%B6%B2%E8%B7%AF%E7%AF%84%E4%BE%8B/Block%20Design.png)

.vhd:https://github.com/yihong92/SOC/blob/main/HW_1/HW_1.srcs/sources_1/new/LED.vhd    
程式說明:sw用來控制是否接收gpio的output，gpio輸出的LED資訊傳給LED_input，LED_input再傳給LED_output

.c:https://github.com/yihong92/SOC/blob/main/HW_1/HW_1.sdk/LED/src/main.c  
程式說明:控制led閃爍次數，與顯示模式(0x00 ~ 0xFF)，初始全亮，閃爍完畢也是全亮

影片demo:https://www.youtube.com/watch?v=5cisn80MZtw
