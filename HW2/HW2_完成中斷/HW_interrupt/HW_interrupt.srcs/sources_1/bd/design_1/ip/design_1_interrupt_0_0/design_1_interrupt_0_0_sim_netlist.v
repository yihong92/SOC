// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed May 14 18:00:53 2025
// Host        : LAPTOP-FFDNP4IP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/soc/HW_interrupt/HW_interrupt.srcs/sources_1/bd/design_1/ip/design_1_interrupt_0_0/design_1_interrupt_0_0_sim_netlist.v
// Design      : design_1_interrupt_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_interrupt_0_0,interrupt_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "interrupt_v1_0,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_interrupt_0_0
   (led,
    btn,
    stop_btn,
    irq,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn,
    s_axi_intr_awaddr,
    s_axi_intr_awprot,
    s_axi_intr_awvalid,
    s_axi_intr_awready,
    s_axi_intr_wdata,
    s_axi_intr_wstrb,
    s_axi_intr_wvalid,
    s_axi_intr_wready,
    s_axi_intr_bresp,
    s_axi_intr_bvalid,
    s_axi_intr_bready,
    s_axi_intr_araddr,
    s_axi_intr_arprot,
    s_axi_intr_arvalid,
    s_axi_intr_arready,
    s_axi_intr_rdata,
    s_axi_intr_rresp,
    s_axi_intr_rvalid,
    s_axi_intr_rready,
    s_axi_intr_aclk,
    s_axi_intr_aresetn);
  output [7:0]led;
  input btn;
  input stop_btn;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 IRQ INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME IRQ, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output irq;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_INTR AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_INTR, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 5, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [4:0]s_axi_intr_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_INTR AWPROT" *) input [2:0]s_axi_intr_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_INTR AWVALID" *) input s_axi_intr_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_INTR AWREADY" *) output s_axi_intr_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_INTR WDATA" *) input [31:0]s_axi_intr_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_INTR WSTRB" *) input [3:0]s_axi_intr_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_INTR WVALID" *) input s_axi_intr_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_INTR WREADY" *) output s_axi_intr_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_INTR BRESP" *) output [1:0]s_axi_intr_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_INTR BVALID" *) output s_axi_intr_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_INTR BREADY" *) input s_axi_intr_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_INTR ARADDR" *) input [4:0]s_axi_intr_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_INTR ARPROT" *) input [2:0]s_axi_intr_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_INTR ARVALID" *) input s_axi_intr_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_INTR ARREADY" *) output s_axi_intr_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_INTR RDATA" *) output [31:0]s_axi_intr_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_INTR RRESP" *) output [1:0]s_axi_intr_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_INTR RVALID" *) output s_axi_intr_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_INTR RREADY" *) input s_axi_intr_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_INTR_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_INTR_CLK, ASSOCIATED_BUSIF S_AXI_INTR, ASSOCIATED_RESET s_axi_intr_aresetn, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s_axi_intr_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXI_INTR_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_INTR_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_intr_aresetn;

  wire \<const0> ;
  wire btn;
  wire irq;
  wire [7:0]led;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire s_axi_intr_aclk;
  wire [4:0]s_axi_intr_araddr;
  wire s_axi_intr_aresetn;
  wire s_axi_intr_arready;
  wire s_axi_intr_arvalid;
  wire [4:0]s_axi_intr_awaddr;
  wire s_axi_intr_awready;
  wire s_axi_intr_awvalid;
  wire s_axi_intr_bready;
  wire s_axi_intr_bvalid;
  wire [0:0]\^s_axi_intr_rdata ;
  wire s_axi_intr_rready;
  wire s_axi_intr_rvalid;
  wire [31:0]s_axi_intr_wdata;
  wire s_axi_intr_wready;
  wire s_axi_intr_wvalid;
  wire stop_btn;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  assign s_axi_intr_bresp[1] = \<const0> ;
  assign s_axi_intr_bresp[0] = \<const0> ;
  assign s_axi_intr_rdata[31] = \<const0> ;
  assign s_axi_intr_rdata[30] = \<const0> ;
  assign s_axi_intr_rdata[29] = \<const0> ;
  assign s_axi_intr_rdata[28] = \<const0> ;
  assign s_axi_intr_rdata[27] = \<const0> ;
  assign s_axi_intr_rdata[26] = \<const0> ;
  assign s_axi_intr_rdata[25] = \<const0> ;
  assign s_axi_intr_rdata[24] = \<const0> ;
  assign s_axi_intr_rdata[23] = \<const0> ;
  assign s_axi_intr_rdata[22] = \<const0> ;
  assign s_axi_intr_rdata[21] = \<const0> ;
  assign s_axi_intr_rdata[20] = \<const0> ;
  assign s_axi_intr_rdata[19] = \<const0> ;
  assign s_axi_intr_rdata[18] = \<const0> ;
  assign s_axi_intr_rdata[17] = \<const0> ;
  assign s_axi_intr_rdata[16] = \<const0> ;
  assign s_axi_intr_rdata[15] = \<const0> ;
  assign s_axi_intr_rdata[14] = \<const0> ;
  assign s_axi_intr_rdata[13] = \<const0> ;
  assign s_axi_intr_rdata[12] = \<const0> ;
  assign s_axi_intr_rdata[11] = \<const0> ;
  assign s_axi_intr_rdata[10] = \<const0> ;
  assign s_axi_intr_rdata[9] = \<const0> ;
  assign s_axi_intr_rdata[8] = \<const0> ;
  assign s_axi_intr_rdata[7] = \<const0> ;
  assign s_axi_intr_rdata[6] = \<const0> ;
  assign s_axi_intr_rdata[5] = \<const0> ;
  assign s_axi_intr_rdata[4] = \<const0> ;
  assign s_axi_intr_rdata[3] = \<const0> ;
  assign s_axi_intr_rdata[2] = \<const0> ;
  assign s_axi_intr_rdata[1] = \<const0> ;
  assign s_axi_intr_rdata[0] = \^s_axi_intr_rdata [0];
  assign s_axi_intr_rresp[1] = \<const0> ;
  assign s_axi_intr_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_interrupt_0_0_interrupt_v1_0 U0
       (.btn(btn),
        .irq(irq),
        .led(led),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .s_axi_intr_aclk(s_axi_intr_aclk),
        .s_axi_intr_araddr(s_axi_intr_araddr[4:2]),
        .s_axi_intr_aresetn(s_axi_intr_aresetn),
        .s_axi_intr_arready(s_axi_intr_arready),
        .s_axi_intr_arvalid(s_axi_intr_arvalid),
        .s_axi_intr_awaddr(s_axi_intr_awaddr[4:2]),
        .s_axi_intr_awready(s_axi_intr_awready),
        .s_axi_intr_awvalid(s_axi_intr_awvalid),
        .s_axi_intr_bready(s_axi_intr_bready),
        .s_axi_intr_bvalid(s_axi_intr_bvalid),
        .s_axi_intr_rdata(\^s_axi_intr_rdata ),
        .s_axi_intr_rready(s_axi_intr_rready),
        .s_axi_intr_rvalid(s_axi_intr_rvalid),
        .s_axi_intr_wdata(s_axi_intr_wdata[0]),
        .s_axi_intr_wready(s_axi_intr_wready),
        .s_axi_intr_wvalid(s_axi_intr_wvalid),
        .stop_btn(stop_btn));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module design_1_interrupt_0_0_counter
   (clear,
    \cnt_reg[0]_0 ,
    \cnt_reg[1]_0 ,
    \cnt_reg[2]_0 ,
    \cnt_reg[3]_0 ,
    \cnt_reg[4]_0 ,
    \cnt_reg[5]_0 ,
    \cnt_reg[6]_0 ,
    \cnt_reg[7]_0 ,
    D,
    irq_int_reg_0,
    stop_btn,
    btn,
    s00_axi_aclk,
    Q,
    s00_axi_aresetn,
    axi_araddr,
    counter_irq_ack,
    det_intr);
  output clear;
  output \cnt_reg[0]_0 ;
  output \cnt_reg[1]_0 ;
  output \cnt_reg[2]_0 ;
  output \cnt_reg[3]_0 ;
  output \cnt_reg[4]_0 ;
  output \cnt_reg[5]_0 ;
  output \cnt_reg[6]_0 ;
  output \cnt_reg[7]_0 ;
  output [31:0]D;
  output irq_int_reg_0;
  input stop_btn;
  input btn;
  input s00_axi_aclk;
  input [31:0]Q;
  input s00_axi_aresetn;
  input [1:0]axi_araddr;
  input counter_irq_ack;
  input det_intr;

  wire [31:0]D;
  wire [31:0]Q;
  wire [1:0]axi_araddr;
  wire btn;
  wire btn_prev;
  wire clear;
  wire \cnt[12]_i_2_n_0 ;
  wire \cnt[12]_i_3_n_0 ;
  wire \cnt[12]_i_4_n_0 ;
  wire \cnt[12]_i_5_n_0 ;
  wire \cnt[16]_i_2_n_0 ;
  wire \cnt[16]_i_3_n_0 ;
  wire \cnt[16]_i_4_n_0 ;
  wire \cnt[16]_i_5_n_0 ;
  wire \cnt[20]_i_2_n_0 ;
  wire \cnt[20]_i_3_n_0 ;
  wire \cnt[20]_i_4_n_0 ;
  wire \cnt[20]_i_5_n_0 ;
  wire \cnt[24]_i_2_n_0 ;
  wire \cnt[24]_i_3_n_0 ;
  wire \cnt[24]_i_4_n_0 ;
  wire \cnt[24]_i_5_n_0 ;
  wire \cnt[28]_i_2_n_0 ;
  wire \cnt[28]_i_3_n_0 ;
  wire \cnt[28]_i_4_n_0 ;
  wire \cnt[28]_i_5_n_0 ;
  wire \cnt[3]_i_2_n_0 ;
  wire \cnt[3]_i_3_n_0 ;
  wire \cnt[3]_i_4_n_0 ;
  wire \cnt[3]_i_5_n_0 ;
  wire \cnt[7]_i_3_n_0 ;
  wire \cnt[7]_i_4_n_0 ;
  wire \cnt[7]_i_5_n_0 ;
  wire \cnt[7]_i_6_n_0 ;
  wire \cnt[8]_i_2_n_0 ;
  wire \cnt[8]_i_3_n_0 ;
  wire \cnt[8]_i_4_n_0 ;
  wire \cnt[8]_i_5_n_0 ;
  wire [31:8]cnt_reg;
  wire \cnt_reg[0]_0 ;
  wire \cnt_reg[12]_i_1_n_0 ;
  wire \cnt_reg[12]_i_1_n_1 ;
  wire \cnt_reg[12]_i_1_n_2 ;
  wire \cnt_reg[12]_i_1_n_3 ;
  wire \cnt_reg[12]_i_1_n_4 ;
  wire \cnt_reg[12]_i_1_n_5 ;
  wire \cnt_reg[12]_i_1_n_6 ;
  wire \cnt_reg[12]_i_1_n_7 ;
  wire \cnt_reg[16]_i_1_n_0 ;
  wire \cnt_reg[16]_i_1_n_1 ;
  wire \cnt_reg[16]_i_1_n_2 ;
  wire \cnt_reg[16]_i_1_n_3 ;
  wire \cnt_reg[16]_i_1_n_4 ;
  wire \cnt_reg[16]_i_1_n_5 ;
  wire \cnt_reg[16]_i_1_n_6 ;
  wire \cnt_reg[16]_i_1_n_7 ;
  wire \cnt_reg[1]_0 ;
  wire \cnt_reg[20]_i_1_n_0 ;
  wire \cnt_reg[20]_i_1_n_1 ;
  wire \cnt_reg[20]_i_1_n_2 ;
  wire \cnt_reg[20]_i_1_n_3 ;
  wire \cnt_reg[20]_i_1_n_4 ;
  wire \cnt_reg[20]_i_1_n_5 ;
  wire \cnt_reg[20]_i_1_n_6 ;
  wire \cnt_reg[20]_i_1_n_7 ;
  wire \cnt_reg[24]_i_1_n_0 ;
  wire \cnt_reg[24]_i_1_n_1 ;
  wire \cnt_reg[24]_i_1_n_2 ;
  wire \cnt_reg[24]_i_1_n_3 ;
  wire \cnt_reg[24]_i_1_n_4 ;
  wire \cnt_reg[24]_i_1_n_5 ;
  wire \cnt_reg[24]_i_1_n_6 ;
  wire \cnt_reg[24]_i_1_n_7 ;
  wire \cnt_reg[28]_i_1_n_1 ;
  wire \cnt_reg[28]_i_1_n_2 ;
  wire \cnt_reg[28]_i_1_n_3 ;
  wire \cnt_reg[28]_i_1_n_4 ;
  wire \cnt_reg[28]_i_1_n_5 ;
  wire \cnt_reg[28]_i_1_n_6 ;
  wire \cnt_reg[28]_i_1_n_7 ;
  wire \cnt_reg[2]_0 ;
  wire \cnt_reg[3]_0 ;
  wire \cnt_reg[3]_i_1_n_0 ;
  wire \cnt_reg[3]_i_1_n_1 ;
  wire \cnt_reg[3]_i_1_n_2 ;
  wire \cnt_reg[3]_i_1_n_3 ;
  wire \cnt_reg[3]_i_1_n_4 ;
  wire \cnt_reg[3]_i_1_n_5 ;
  wire \cnt_reg[3]_i_1_n_6 ;
  wire \cnt_reg[3]_i_1_n_7 ;
  wire \cnt_reg[4]_0 ;
  wire \cnt_reg[5]_0 ;
  wire \cnt_reg[6]_0 ;
  wire \cnt_reg[7]_0 ;
  wire \cnt_reg[7]_i_1_n_0 ;
  wire \cnt_reg[7]_i_1_n_1 ;
  wire \cnt_reg[7]_i_1_n_2 ;
  wire \cnt_reg[7]_i_1_n_3 ;
  wire \cnt_reg[7]_i_1_n_4 ;
  wire \cnt_reg[7]_i_1_n_5 ;
  wire \cnt_reg[7]_i_1_n_6 ;
  wire \cnt_reg[7]_i_1_n_7 ;
  wire \cnt_reg[8]_i_1_n_0 ;
  wire \cnt_reg[8]_i_1_n_1 ;
  wire \cnt_reg[8]_i_1_n_2 ;
  wire \cnt_reg[8]_i_1_n_3 ;
  wire \cnt_reg[8]_i_1_n_4 ;
  wire \cnt_reg[8]_i_1_n_5 ;
  wire \cnt_reg[8]_i_1_n_6 ;
  wire \cnt_reg[8]_i_1_n_7 ;
  wire counter_irq_ack;
  wire counting;
  wire counting1;
  wire counting110_out;
  wire \counting1_inferred__0/i__carry__0_n_0 ;
  wire \counting1_inferred__0/i__carry__0_n_1 ;
  wire \counting1_inferred__0/i__carry__0_n_2 ;
  wire \counting1_inferred__0/i__carry__0_n_3 ;
  wire \counting1_inferred__0/i__carry__1_n_0 ;
  wire \counting1_inferred__0/i__carry__1_n_1 ;
  wire \counting1_inferred__0/i__carry__1_n_2 ;
  wire \counting1_inferred__0/i__carry__1_n_3 ;
  wire \counting1_inferred__0/i__carry__2_n_1 ;
  wire \counting1_inferred__0/i__carry__2_n_2 ;
  wire \counting1_inferred__0/i__carry__2_n_3 ;
  wire \counting1_inferred__0/i__carry_n_0 ;
  wire \counting1_inferred__0/i__carry_n_1 ;
  wire \counting1_inferred__0/i__carry_n_2 ;
  wire \counting1_inferred__0/i__carry_n_3 ;
  wire counting_i_10_n_0;
  wire counting_i_11_n_0;
  wire counting_i_12_n_0;
  wire counting_i_1_n_0;
  wire counting_i_3_n_0;
  wire counting_i_4_n_0;
  wire counting_i_5_n_0;
  wire counting_i_6_n_0;
  wire counting_i_7_n_0;
  wire counting_i_8_n_0;
  wire counting_i_9_n_0;
  wire det_intr;
  wire \div[0]_i_2_n_0 ;
  wire \div_reg[0]_i_1_n_0 ;
  wire \div_reg[0]_i_1_n_1 ;
  wire \div_reg[0]_i_1_n_2 ;
  wire \div_reg[0]_i_1_n_3 ;
  wire \div_reg[0]_i_1_n_4 ;
  wire \div_reg[0]_i_1_n_5 ;
  wire \div_reg[0]_i_1_n_6 ;
  wire \div_reg[0]_i_1_n_7 ;
  wire \div_reg[12]_i_1_n_0 ;
  wire \div_reg[12]_i_1_n_1 ;
  wire \div_reg[12]_i_1_n_2 ;
  wire \div_reg[12]_i_1_n_3 ;
  wire \div_reg[12]_i_1_n_4 ;
  wire \div_reg[12]_i_1_n_5 ;
  wire \div_reg[12]_i_1_n_6 ;
  wire \div_reg[12]_i_1_n_7 ;
  wire \div_reg[16]_i_1_n_0 ;
  wire \div_reg[16]_i_1_n_1 ;
  wire \div_reg[16]_i_1_n_2 ;
  wire \div_reg[16]_i_1_n_3 ;
  wire \div_reg[16]_i_1_n_4 ;
  wire \div_reg[16]_i_1_n_5 ;
  wire \div_reg[16]_i_1_n_6 ;
  wire \div_reg[16]_i_1_n_7 ;
  wire \div_reg[20]_i_1_n_0 ;
  wire \div_reg[20]_i_1_n_1 ;
  wire \div_reg[20]_i_1_n_2 ;
  wire \div_reg[20]_i_1_n_3 ;
  wire \div_reg[20]_i_1_n_4 ;
  wire \div_reg[20]_i_1_n_5 ;
  wire \div_reg[20]_i_1_n_6 ;
  wire \div_reg[20]_i_1_n_7 ;
  wire \div_reg[24]_i_1_n_7 ;
  wire \div_reg[4]_i_1_n_0 ;
  wire \div_reg[4]_i_1_n_1 ;
  wire \div_reg[4]_i_1_n_2 ;
  wire \div_reg[4]_i_1_n_3 ;
  wire \div_reg[4]_i_1_n_4 ;
  wire \div_reg[4]_i_1_n_5 ;
  wire \div_reg[4]_i_1_n_6 ;
  wire \div_reg[4]_i_1_n_7 ;
  wire \div_reg[8]_i_1_n_0 ;
  wire \div_reg[8]_i_1_n_1 ;
  wire \div_reg[8]_i_1_n_2 ;
  wire \div_reg[8]_i_1_n_3 ;
  wire \div_reg[8]_i_1_n_4 ;
  wire \div_reg[8]_i_1_n_5 ;
  wire \div_reg[8]_i_1_n_6 ;
  wire \div_reg[8]_i_1_n_7 ;
  wire \div_reg_n_0_[0] ;
  wire \div_reg_n_0_[10] ;
  wire \div_reg_n_0_[11] ;
  wire \div_reg_n_0_[12] ;
  wire \div_reg_n_0_[13] ;
  wire \div_reg_n_0_[14] ;
  wire \div_reg_n_0_[15] ;
  wire \div_reg_n_0_[16] ;
  wire \div_reg_n_0_[17] ;
  wire \div_reg_n_0_[18] ;
  wire \div_reg_n_0_[19] ;
  wire \div_reg_n_0_[1] ;
  wire \div_reg_n_0_[20] ;
  wire \div_reg_n_0_[21] ;
  wire \div_reg_n_0_[22] ;
  wire \div_reg_n_0_[23] ;
  wire \div_reg_n_0_[2] ;
  wire \div_reg_n_0_[3] ;
  wire \div_reg_n_0_[4] ;
  wire \div_reg_n_0_[5] ;
  wire \div_reg_n_0_[6] ;
  wire \div_reg_n_0_[7] ;
  wire \div_reg_n_0_[8] ;
  wire \div_reg_n_0_[9] ;
  wire done_int;
  wire done_int_i_1_n_0;
  wire fc;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry__1_i_6_n_0;
  wire i__carry__1_i_7_n_0;
  wire i__carry__1_i_8_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__2_i_5_n_0;
  wire i__carry__2_i_6_n_0;
  wire i__carry__2_i_7_n_0;
  wire i__carry__2_i_8_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire irq_int;
  wire irq_int_i_1_n_0;
  wire irq_int_reg_0;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire stop_btn;
  wire stop_btn_prev;
  wire [3:3]\NLW_cnt_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counting1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_counting1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_counting1_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_counting1_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [3:0]\NLW_div_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_div_reg[24]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[0]_i_1 
       (.I0(done_int),
        .I1(irq_int),
        .I2(axi_araddr[0]),
        .I3(axi_araddr[1]),
        .I4(Q[0]),
        .I5(\cnt_reg[0]_0 ),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \axi_rdata[10]_i_1 
       (.I0(cnt_reg[10]),
        .I1(Q[10]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .O(D[10]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \axi_rdata[11]_i_1 
       (.I0(cnt_reg[11]),
        .I1(Q[11]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .O(D[11]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \axi_rdata[12]_i_1 
       (.I0(cnt_reg[12]),
        .I1(Q[12]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .O(D[12]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \axi_rdata[13]_i_1 
       (.I0(cnt_reg[13]),
        .I1(Q[13]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .O(D[13]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \axi_rdata[14]_i_1 
       (.I0(cnt_reg[14]),
        .I1(Q[14]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .O(D[14]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \axi_rdata[15]_i_1 
       (.I0(cnt_reg[15]),
        .I1(Q[15]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .O(D[15]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \axi_rdata[16]_i_1 
       (.I0(cnt_reg[16]),
        .I1(Q[16]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .O(D[16]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \axi_rdata[17]_i_1 
       (.I0(cnt_reg[17]),
        .I1(Q[17]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \axi_rdata[18]_i_1 
       (.I0(cnt_reg[18]),
        .I1(Q[18]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .O(D[18]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \axi_rdata[19]_i_1 
       (.I0(cnt_reg[19]),
        .I1(Q[19]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .O(D[19]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \axi_rdata[1]_i_1 
       (.I0(\cnt_reg[1]_0 ),
        .I1(Q[1]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \axi_rdata[20]_i_1 
       (.I0(cnt_reg[20]),
        .I1(Q[20]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .O(D[20]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \axi_rdata[21]_i_1 
       (.I0(cnt_reg[21]),
        .I1(Q[21]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .O(D[21]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \axi_rdata[22]_i_1 
       (.I0(cnt_reg[22]),
        .I1(Q[22]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .O(D[22]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \axi_rdata[23]_i_1 
       (.I0(cnt_reg[23]),
        .I1(Q[23]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .O(D[23]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \axi_rdata[24]_i_1 
       (.I0(cnt_reg[24]),
        .I1(Q[24]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .O(D[24]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \axi_rdata[25]_i_1 
       (.I0(cnt_reg[25]),
        .I1(Q[25]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .O(D[25]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \axi_rdata[26]_i_1 
       (.I0(cnt_reg[26]),
        .I1(Q[26]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .O(D[26]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \axi_rdata[27]_i_1 
       (.I0(cnt_reg[27]),
        .I1(Q[27]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .O(D[27]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \axi_rdata[28]_i_1 
       (.I0(cnt_reg[28]),
        .I1(Q[28]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .O(D[28]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \axi_rdata[29]_i_1 
       (.I0(cnt_reg[29]),
        .I1(Q[29]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .O(D[29]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \axi_rdata[2]_i_1 
       (.I0(\cnt_reg[2]_0 ),
        .I1(Q[2]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \axi_rdata[30]_i_1 
       (.I0(cnt_reg[30]),
        .I1(Q[30]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .O(D[30]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \axi_rdata[31]_i_2 
       (.I0(cnt_reg[31]),
        .I1(Q[31]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .O(D[31]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \axi_rdata[3]_i_1 
       (.I0(\cnt_reg[3]_0 ),
        .I1(Q[3]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \axi_rdata[4]_i_1 
       (.I0(\cnt_reg[4]_0 ),
        .I1(Q[4]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \axi_rdata[5]_i_1 
       (.I0(\cnt_reg[5]_0 ),
        .I1(Q[5]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \axi_rdata[6]_i_1 
       (.I0(\cnt_reg[6]_0 ),
        .I1(Q[6]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .O(D[6]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \axi_rdata[7]_i_1 
       (.I0(\cnt_reg[7]_0 ),
        .I1(Q[7]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .O(D[7]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \axi_rdata[8]_i_1 
       (.I0(cnt_reg[8]),
        .I1(Q[8]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .O(D[8]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \axi_rdata[9]_i_1 
       (.I0(cnt_reg[9]),
        .I1(Q[9]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .O(D[9]));
  FDCE #(
    .INIT(1'b0)) 
    btn_prev_reg
       (.C(fc),
        .CE(1'b1),
        .CLR(clear),
        .D(btn),
        .Q(btn_prev));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[12]_i_2 
       (.I0(counting1),
        .I1(cnt_reg[15]),
        .O(\cnt[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[12]_i_3 
       (.I0(counting1),
        .I1(cnt_reg[14]),
        .O(\cnt[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[12]_i_4 
       (.I0(counting1),
        .I1(cnt_reg[13]),
        .O(\cnt[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[12]_i_5 
       (.I0(counting1),
        .I1(cnt_reg[12]),
        .O(\cnt[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[16]_i_2 
       (.I0(counting1),
        .I1(cnt_reg[19]),
        .O(\cnt[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[16]_i_3 
       (.I0(counting1),
        .I1(cnt_reg[18]),
        .O(\cnt[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[16]_i_4 
       (.I0(counting1),
        .I1(cnt_reg[17]),
        .O(\cnt[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[16]_i_5 
       (.I0(counting1),
        .I1(cnt_reg[16]),
        .O(\cnt[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[20]_i_2 
       (.I0(counting1),
        .I1(cnt_reg[23]),
        .O(\cnt[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[20]_i_3 
       (.I0(counting1),
        .I1(cnt_reg[22]),
        .O(\cnt[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[20]_i_4 
       (.I0(counting1),
        .I1(cnt_reg[21]),
        .O(\cnt[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[20]_i_5 
       (.I0(counting1),
        .I1(cnt_reg[20]),
        .O(\cnt[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[24]_i_2 
       (.I0(counting1),
        .I1(cnt_reg[27]),
        .O(\cnt[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[24]_i_3 
       (.I0(counting1),
        .I1(cnt_reg[26]),
        .O(\cnt[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[24]_i_4 
       (.I0(counting1),
        .I1(cnt_reg[25]),
        .O(\cnt[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[24]_i_5 
       (.I0(counting1),
        .I1(cnt_reg[24]),
        .O(\cnt[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[28]_i_2 
       (.I0(counting1),
        .I1(cnt_reg[31]),
        .O(\cnt[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[28]_i_3 
       (.I0(counting1),
        .I1(cnt_reg[30]),
        .O(\cnt[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[28]_i_4 
       (.I0(counting1),
        .I1(cnt_reg[29]),
        .O(\cnt[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[28]_i_5 
       (.I0(counting1),
        .I1(cnt_reg[28]),
        .O(\cnt[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[3]_i_2 
       (.I0(counting1),
        .I1(\cnt_reg[3]_0 ),
        .O(\cnt[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[3]_i_3 
       (.I0(counting1),
        .I1(\cnt_reg[2]_0 ),
        .O(\cnt[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[3]_i_4 
       (.I0(counting1),
        .I1(\cnt_reg[1]_0 ),
        .O(\cnt[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \cnt[3]_i_5 
       (.I0(\cnt_reg[0]_0 ),
        .I1(counting1),
        .O(\cnt[3]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[7]_i_2 
       (.I0(s00_axi_aresetn),
        .O(clear));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[7]_i_3 
       (.I0(counting1),
        .I1(\cnt_reg[7]_0 ),
        .O(\cnt[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[7]_i_4 
       (.I0(counting1),
        .I1(\cnt_reg[6]_0 ),
        .O(\cnt[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[7]_i_5 
       (.I0(counting1),
        .I1(\cnt_reg[5]_0 ),
        .O(\cnt[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[7]_i_6 
       (.I0(counting1),
        .I1(\cnt_reg[4]_0 ),
        .O(\cnt[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[8]_i_2 
       (.I0(counting1),
        .I1(cnt_reg[11]),
        .O(\cnt[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[8]_i_3 
       (.I0(counting1),
        .I1(cnt_reg[10]),
        .O(\cnt[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[8]_i_4 
       (.I0(counting1),
        .I1(cnt_reg[9]),
        .O(\cnt[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[8]_i_5 
       (.I0(counting1),
        .I1(cnt_reg[8]),
        .O(\cnt[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(fc),
        .CE(counting),
        .CLR(clear),
        .D(\cnt_reg[3]_i_1_n_7 ),
        .Q(\cnt_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(fc),
        .CE(counting),
        .CLR(clear),
        .D(\cnt_reg[8]_i_1_n_5 ),
        .Q(cnt_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(fc),
        .CE(counting),
        .CLR(clear),
        .D(\cnt_reg[8]_i_1_n_4 ),
        .Q(cnt_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(fc),
        .CE(counting),
        .CLR(clear),
        .D(\cnt_reg[12]_i_1_n_7 ),
        .Q(cnt_reg[12]));
  CARRY4 \cnt_reg[12]_i_1 
       (.CI(\cnt_reg[8]_i_1_n_0 ),
        .CO({\cnt_reg[12]_i_1_n_0 ,\cnt_reg[12]_i_1_n_1 ,\cnt_reg[12]_i_1_n_2 ,\cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[12]_i_1_n_4 ,\cnt_reg[12]_i_1_n_5 ,\cnt_reg[12]_i_1_n_6 ,\cnt_reg[12]_i_1_n_7 }),
        .S({\cnt[12]_i_2_n_0 ,\cnt[12]_i_3_n_0 ,\cnt[12]_i_4_n_0 ,\cnt[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(fc),
        .CE(counting),
        .CLR(clear),
        .D(\cnt_reg[12]_i_1_n_6 ),
        .Q(cnt_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(fc),
        .CE(counting),
        .CLR(clear),
        .D(\cnt_reg[12]_i_1_n_5 ),
        .Q(cnt_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[15] 
       (.C(fc),
        .CE(counting),
        .CLR(clear),
        .D(\cnt_reg[12]_i_1_n_4 ),
        .Q(cnt_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[16] 
       (.C(fc),
        .CE(counting),
        .CLR(clear),
        .D(\cnt_reg[16]_i_1_n_7 ),
        .Q(cnt_reg[16]));
  CARRY4 \cnt_reg[16]_i_1 
       (.CI(\cnt_reg[12]_i_1_n_0 ),
        .CO({\cnt_reg[16]_i_1_n_0 ,\cnt_reg[16]_i_1_n_1 ,\cnt_reg[16]_i_1_n_2 ,\cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[16]_i_1_n_4 ,\cnt_reg[16]_i_1_n_5 ,\cnt_reg[16]_i_1_n_6 ,\cnt_reg[16]_i_1_n_7 }),
        .S({\cnt[16]_i_2_n_0 ,\cnt[16]_i_3_n_0 ,\cnt[16]_i_4_n_0 ,\cnt[16]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[17] 
       (.C(fc),
        .CE(counting),
        .CLR(clear),
        .D(\cnt_reg[16]_i_1_n_6 ),
        .Q(cnt_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[18] 
       (.C(fc),
        .CE(counting),
        .CLR(clear),
        .D(\cnt_reg[16]_i_1_n_5 ),
        .Q(cnt_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[19] 
       (.C(fc),
        .CE(counting),
        .CLR(clear),
        .D(\cnt_reg[16]_i_1_n_4 ),
        .Q(cnt_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(fc),
        .CE(counting),
        .CLR(clear),
        .D(\cnt_reg[3]_i_1_n_6 ),
        .Q(\cnt_reg[1]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[20] 
       (.C(fc),
        .CE(counting),
        .CLR(clear),
        .D(\cnt_reg[20]_i_1_n_7 ),
        .Q(cnt_reg[20]));
  CARRY4 \cnt_reg[20]_i_1 
       (.CI(\cnt_reg[16]_i_1_n_0 ),
        .CO({\cnt_reg[20]_i_1_n_0 ,\cnt_reg[20]_i_1_n_1 ,\cnt_reg[20]_i_1_n_2 ,\cnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[20]_i_1_n_4 ,\cnt_reg[20]_i_1_n_5 ,\cnt_reg[20]_i_1_n_6 ,\cnt_reg[20]_i_1_n_7 }),
        .S({\cnt[20]_i_2_n_0 ,\cnt[20]_i_3_n_0 ,\cnt[20]_i_4_n_0 ,\cnt[20]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[21] 
       (.C(fc),
        .CE(counting),
        .CLR(clear),
        .D(\cnt_reg[20]_i_1_n_6 ),
        .Q(cnt_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[22] 
       (.C(fc),
        .CE(counting),
        .CLR(clear),
        .D(\cnt_reg[20]_i_1_n_5 ),
        .Q(cnt_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[23] 
       (.C(fc),
        .CE(counting),
        .CLR(clear),
        .D(\cnt_reg[20]_i_1_n_4 ),
        .Q(cnt_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[24] 
       (.C(fc),
        .CE(counting),
        .CLR(clear),
        .D(\cnt_reg[24]_i_1_n_7 ),
        .Q(cnt_reg[24]));
  CARRY4 \cnt_reg[24]_i_1 
       (.CI(\cnt_reg[20]_i_1_n_0 ),
        .CO({\cnt_reg[24]_i_1_n_0 ,\cnt_reg[24]_i_1_n_1 ,\cnt_reg[24]_i_1_n_2 ,\cnt_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[24]_i_1_n_4 ,\cnt_reg[24]_i_1_n_5 ,\cnt_reg[24]_i_1_n_6 ,\cnt_reg[24]_i_1_n_7 }),
        .S({\cnt[24]_i_2_n_0 ,\cnt[24]_i_3_n_0 ,\cnt[24]_i_4_n_0 ,\cnt[24]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[25] 
       (.C(fc),
        .CE(counting),
        .CLR(clear),
        .D(\cnt_reg[24]_i_1_n_6 ),
        .Q(cnt_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[26] 
       (.C(fc),
        .CE(counting),
        .CLR(clear),
        .D(\cnt_reg[24]_i_1_n_5 ),
        .Q(cnt_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[27] 
       (.C(fc),
        .CE(counting),
        .CLR(clear),
        .D(\cnt_reg[24]_i_1_n_4 ),
        .Q(cnt_reg[27]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[28] 
       (.C(fc),
        .CE(counting),
        .CLR(clear),
        .D(\cnt_reg[28]_i_1_n_7 ),
        .Q(cnt_reg[28]));
  CARRY4 \cnt_reg[28]_i_1 
       (.CI(\cnt_reg[24]_i_1_n_0 ),
        .CO({\NLW_cnt_reg[28]_i_1_CO_UNCONNECTED [3],\cnt_reg[28]_i_1_n_1 ,\cnt_reg[28]_i_1_n_2 ,\cnt_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[28]_i_1_n_4 ,\cnt_reg[28]_i_1_n_5 ,\cnt_reg[28]_i_1_n_6 ,\cnt_reg[28]_i_1_n_7 }),
        .S({\cnt[28]_i_2_n_0 ,\cnt[28]_i_3_n_0 ,\cnt[28]_i_4_n_0 ,\cnt[28]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[29] 
       (.C(fc),
        .CE(counting),
        .CLR(clear),
        .D(\cnt_reg[28]_i_1_n_6 ),
        .Q(cnt_reg[29]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(fc),
        .CE(counting),
        .CLR(clear),
        .D(\cnt_reg[3]_i_1_n_5 ),
        .Q(\cnt_reg[2]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[30] 
       (.C(fc),
        .CE(counting),
        .CLR(clear),
        .D(\cnt_reg[28]_i_1_n_5 ),
        .Q(cnt_reg[30]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[31] 
       (.C(fc),
        .CE(counting),
        .CLR(clear),
        .D(\cnt_reg[28]_i_1_n_4 ),
        .Q(cnt_reg[31]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(fc),
        .CE(counting),
        .CLR(clear),
        .D(\cnt_reg[3]_i_1_n_4 ),
        .Q(\cnt_reg[3]_0 ));
  CARRY4 \cnt_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\cnt_reg[3]_i_1_n_0 ,\cnt_reg[3]_i_1_n_1 ,\cnt_reg[3]_i_1_n_2 ,\cnt_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,counting1}),
        .O({\cnt_reg[3]_i_1_n_4 ,\cnt_reg[3]_i_1_n_5 ,\cnt_reg[3]_i_1_n_6 ,\cnt_reg[3]_i_1_n_7 }),
        .S({\cnt[3]_i_2_n_0 ,\cnt[3]_i_3_n_0 ,\cnt[3]_i_4_n_0 ,\cnt[3]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(fc),
        .CE(counting),
        .CLR(clear),
        .D(\cnt_reg[7]_i_1_n_7 ),
        .Q(\cnt_reg[4]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(fc),
        .CE(counting),
        .CLR(clear),
        .D(\cnt_reg[7]_i_1_n_6 ),
        .Q(\cnt_reg[5]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(fc),
        .CE(counting),
        .CLR(clear),
        .D(\cnt_reg[7]_i_1_n_5 ),
        .Q(\cnt_reg[6]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(fc),
        .CE(counting),
        .CLR(clear),
        .D(\cnt_reg[7]_i_1_n_4 ),
        .Q(\cnt_reg[7]_0 ));
  CARRY4 \cnt_reg[7]_i_1 
       (.CI(\cnt_reg[3]_i_1_n_0 ),
        .CO({\cnt_reg[7]_i_1_n_0 ,\cnt_reg[7]_i_1_n_1 ,\cnt_reg[7]_i_1_n_2 ,\cnt_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[7]_i_1_n_4 ,\cnt_reg[7]_i_1_n_5 ,\cnt_reg[7]_i_1_n_6 ,\cnt_reg[7]_i_1_n_7 }),
        .S({\cnt[7]_i_3_n_0 ,\cnt[7]_i_4_n_0 ,\cnt[7]_i_5_n_0 ,\cnt[7]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(fc),
        .CE(counting),
        .CLR(clear),
        .D(\cnt_reg[8]_i_1_n_7 ),
        .Q(cnt_reg[8]));
  CARRY4 \cnt_reg[8]_i_1 
       (.CI(\cnt_reg[7]_i_1_n_0 ),
        .CO({\cnt_reg[8]_i_1_n_0 ,\cnt_reg[8]_i_1_n_1 ,\cnt_reg[8]_i_1_n_2 ,\cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[8]_i_1_n_4 ,\cnt_reg[8]_i_1_n_5 ,\cnt_reg[8]_i_1_n_6 ,\cnt_reg[8]_i_1_n_7 }),
        .S({\cnt[8]_i_2_n_0 ,\cnt[8]_i_3_n_0 ,\cnt[8]_i_4_n_0 ,\cnt[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(fc),
        .CE(counting),
        .CLR(clear),
        .D(\cnt_reg[8]_i_1_n_6 ),
        .Q(cnt_reg[9]));
  CARRY4 \counting1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\counting1_inferred__0/i__carry_n_0 ,\counting1_inferred__0/i__carry_n_1 ,\counting1_inferred__0/i__carry_n_2 ,\counting1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(\NLW_counting1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  CARRY4 \counting1_inferred__0/i__carry__0 
       (.CI(\counting1_inferred__0/i__carry_n_0 ),
        .CO({\counting1_inferred__0/i__carry__0_n_0 ,\counting1_inferred__0/i__carry__0_n_1 ,\counting1_inferred__0/i__carry__0_n_2 ,\counting1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}),
        .O(\NLW_counting1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  CARRY4 \counting1_inferred__0/i__carry__1 
       (.CI(\counting1_inferred__0/i__carry__0_n_0 ),
        .CO({\counting1_inferred__0/i__carry__1_n_0 ,\counting1_inferred__0/i__carry__1_n_1 ,\counting1_inferred__0/i__carry__1_n_2 ,\counting1_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}),
        .O(\NLW_counting1_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_5_n_0,i__carry__1_i_6_n_0,i__carry__1_i_7_n_0,i__carry__1_i_8_n_0}));
  CARRY4 \counting1_inferred__0/i__carry__2 
       (.CI(\counting1_inferred__0/i__carry__1_n_0 ),
        .CO({counting1,\counting1_inferred__0/i__carry__2_n_1 ,\counting1_inferred__0/i__carry__2_n_2 ,\counting1_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}),
        .O(\NLW_counting1_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_5_n_0,i__carry__2_i_6_n_0,i__carry__2_i_7_n_0,i__carry__2_i_8_n_0}));
  LUT6 #(
    .INIT(64'h0B0B0B0808080808)) 
    counting_i_1
       (.I0(counting1),
        .I1(counting),
        .I2(counting110_out),
        .I3(counting_i_3_n_0),
        .I4(counting_i_4_n_0),
        .I5(counting_i_5_n_0),
        .O(counting_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    counting_i_10
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(counting_i_10_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    counting_i_11
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(Q[5]),
        .O(counting_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    counting_i_12
       (.I0(Q[17]),
        .I1(Q[18]),
        .O(counting_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    counting_i_2
       (.I0(stop_btn),
        .I1(stop_btn_prev),
        .O(counting110_out));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    counting_i_3
       (.I0(counting_i_6_n_0),
        .I1(Q[27]),
        .I2(Q[28]),
        .I3(Q[29]),
        .I4(Q[30]),
        .O(counting_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    counting_i_4
       (.I0(counting_i_7_n_0),
        .I1(counting_i_8_n_0),
        .I2(counting_i_9_n_0),
        .I3(counting_i_10_n_0),
        .I4(counting_i_11_n_0),
        .I5(counting_i_12_n_0),
        .O(counting_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    counting_i_5
       (.I0(btn),
        .I1(btn_prev),
        .O(counting_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    counting_i_6
       (.I0(Q[19]),
        .I1(Q[20]),
        .I2(Q[21]),
        .I3(Q[22]),
        .I4(Q[0]),
        .I5(Q[31]),
        .O(counting_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    counting_i_7
       (.I0(Q[26]),
        .I1(Q[25]),
        .I2(Q[24]),
        .I3(Q[23]),
        .O(counting_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    counting_i_8
       (.I0(Q[12]),
        .I1(Q[11]),
        .I2(Q[10]),
        .I3(Q[9]),
        .O(counting_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    counting_i_9
       (.I0(Q[16]),
        .I1(Q[15]),
        .I2(Q[14]),
        .I3(Q[13]),
        .O(counting_i_9_n_0));
  FDCE #(
    .INIT(1'b0)) 
    counting_reg
       (.C(fc),
        .CE(1'b1),
        .CLR(clear),
        .D(counting_i_1_n_0),
        .Q(counting));
  LUT1 #(
    .INIT(2'h1)) 
    \div[0]_i_2 
       (.I0(\div_reg_n_0_[0] ),
        .O(\div[0]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \div_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(clear),
        .D(\div_reg[0]_i_1_n_7 ),
        .Q(\div_reg_n_0_[0] ));
  CARRY4 \div_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\div_reg[0]_i_1_n_0 ,\div_reg[0]_i_1_n_1 ,\div_reg[0]_i_1_n_2 ,\div_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\div_reg[0]_i_1_n_4 ,\div_reg[0]_i_1_n_5 ,\div_reg[0]_i_1_n_6 ,\div_reg[0]_i_1_n_7 }),
        .S({\div_reg_n_0_[3] ,\div_reg_n_0_[2] ,\div_reg_n_0_[1] ,\div[0]_i_2_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \div_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(clear),
        .D(\div_reg[8]_i_1_n_5 ),
        .Q(\div_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \div_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(clear),
        .D(\div_reg[8]_i_1_n_4 ),
        .Q(\div_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \div_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(clear),
        .D(\div_reg[12]_i_1_n_7 ),
        .Q(\div_reg_n_0_[12] ));
  CARRY4 \div_reg[12]_i_1 
       (.CI(\div_reg[8]_i_1_n_0 ),
        .CO({\div_reg[12]_i_1_n_0 ,\div_reg[12]_i_1_n_1 ,\div_reg[12]_i_1_n_2 ,\div_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\div_reg[12]_i_1_n_4 ,\div_reg[12]_i_1_n_5 ,\div_reg[12]_i_1_n_6 ,\div_reg[12]_i_1_n_7 }),
        .S({\div_reg_n_0_[15] ,\div_reg_n_0_[14] ,\div_reg_n_0_[13] ,\div_reg_n_0_[12] }));
  FDCE #(
    .INIT(1'b0)) 
    \div_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(clear),
        .D(\div_reg[12]_i_1_n_6 ),
        .Q(\div_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \div_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(clear),
        .D(\div_reg[12]_i_1_n_5 ),
        .Q(\div_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \div_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(clear),
        .D(\div_reg[12]_i_1_n_4 ),
        .Q(\div_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \div_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(clear),
        .D(\div_reg[16]_i_1_n_7 ),
        .Q(\div_reg_n_0_[16] ));
  CARRY4 \div_reg[16]_i_1 
       (.CI(\div_reg[12]_i_1_n_0 ),
        .CO({\div_reg[16]_i_1_n_0 ,\div_reg[16]_i_1_n_1 ,\div_reg[16]_i_1_n_2 ,\div_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\div_reg[16]_i_1_n_4 ,\div_reg[16]_i_1_n_5 ,\div_reg[16]_i_1_n_6 ,\div_reg[16]_i_1_n_7 }),
        .S({\div_reg_n_0_[19] ,\div_reg_n_0_[18] ,\div_reg_n_0_[17] ,\div_reg_n_0_[16] }));
  FDCE #(
    .INIT(1'b0)) 
    \div_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(clear),
        .D(\div_reg[16]_i_1_n_6 ),
        .Q(\div_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \div_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(clear),
        .D(\div_reg[16]_i_1_n_5 ),
        .Q(\div_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \div_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(clear),
        .D(\div_reg[16]_i_1_n_4 ),
        .Q(\div_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \div_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(clear),
        .D(\div_reg[0]_i_1_n_6 ),
        .Q(\div_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \div_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(clear),
        .D(\div_reg[20]_i_1_n_7 ),
        .Q(\div_reg_n_0_[20] ));
  CARRY4 \div_reg[20]_i_1 
       (.CI(\div_reg[16]_i_1_n_0 ),
        .CO({\div_reg[20]_i_1_n_0 ,\div_reg[20]_i_1_n_1 ,\div_reg[20]_i_1_n_2 ,\div_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\div_reg[20]_i_1_n_4 ,\div_reg[20]_i_1_n_5 ,\div_reg[20]_i_1_n_6 ,\div_reg[20]_i_1_n_7 }),
        .S({\div_reg_n_0_[23] ,\div_reg_n_0_[22] ,\div_reg_n_0_[21] ,\div_reg_n_0_[20] }));
  FDCE #(
    .INIT(1'b0)) 
    \div_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(clear),
        .D(\div_reg[20]_i_1_n_6 ),
        .Q(\div_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \div_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(clear),
        .D(\div_reg[20]_i_1_n_5 ),
        .Q(\div_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \div_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(clear),
        .D(\div_reg[20]_i_1_n_4 ),
        .Q(\div_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \div_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(clear),
        .D(\div_reg[24]_i_1_n_7 ),
        .Q(fc));
  CARRY4 \div_reg[24]_i_1 
       (.CI(\div_reg[20]_i_1_n_0 ),
        .CO(\NLW_div_reg[24]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_div_reg[24]_i_1_O_UNCONNECTED [3:1],\div_reg[24]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,fc}));
  FDCE #(
    .INIT(1'b0)) 
    \div_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(clear),
        .D(\div_reg[0]_i_1_n_5 ),
        .Q(\div_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \div_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(clear),
        .D(\div_reg[0]_i_1_n_4 ),
        .Q(\div_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \div_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(clear),
        .D(\div_reg[4]_i_1_n_7 ),
        .Q(\div_reg_n_0_[4] ));
  CARRY4 \div_reg[4]_i_1 
       (.CI(\div_reg[0]_i_1_n_0 ),
        .CO({\div_reg[4]_i_1_n_0 ,\div_reg[4]_i_1_n_1 ,\div_reg[4]_i_1_n_2 ,\div_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\div_reg[4]_i_1_n_4 ,\div_reg[4]_i_1_n_5 ,\div_reg[4]_i_1_n_6 ,\div_reg[4]_i_1_n_7 }),
        .S({\div_reg_n_0_[7] ,\div_reg_n_0_[6] ,\div_reg_n_0_[5] ,\div_reg_n_0_[4] }));
  FDCE #(
    .INIT(1'b0)) 
    \div_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(clear),
        .D(\div_reg[4]_i_1_n_6 ),
        .Q(\div_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \div_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(clear),
        .D(\div_reg[4]_i_1_n_5 ),
        .Q(\div_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \div_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(clear),
        .D(\div_reg[4]_i_1_n_4 ),
        .Q(\div_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \div_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(clear),
        .D(\div_reg[8]_i_1_n_7 ),
        .Q(\div_reg_n_0_[8] ));
  CARRY4 \div_reg[8]_i_1 
       (.CI(\div_reg[4]_i_1_n_0 ),
        .CO({\div_reg[8]_i_1_n_0 ,\div_reg[8]_i_1_n_1 ,\div_reg[8]_i_1_n_2 ,\div_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\div_reg[8]_i_1_n_4 ,\div_reg[8]_i_1_n_5 ,\div_reg[8]_i_1_n_6 ,\div_reg[8]_i_1_n_7 }),
        .S({\div_reg_n_0_[11] ,\div_reg_n_0_[10] ,\div_reg_n_0_[9] ,\div_reg_n_0_[8] }));
  FDCE #(
    .INIT(1'b0)) 
    \div_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(clear),
        .D(\div_reg[8]_i_1_n_6 ),
        .Q(\div_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'h555503FF55550000)) 
    done_int_i_1
       (.I0(counting1),
        .I1(counting_i_3_n_0),
        .I2(counting_i_4_n_0),
        .I3(counting_i_5_n_0),
        .I4(counting),
        .I5(done_int),
        .O(done_int_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    done_int_reg
       (.C(fc),
        .CE(1'b1),
        .CLR(clear),
        .D(done_int_i_1_n_0),
        .Q(done_int));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_intr_detection[0].gen_intr_level_detect.gen_intr_active_high_detect.det_intr[0]_i_1 
       (.I0(irq_int),
        .I1(det_intr),
        .O(irq_int_reg_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_1
       (.I0(Q[14]),
        .I1(cnt_reg[14]),
        .I2(cnt_reg[15]),
        .I3(Q[15]),
        .O(i__carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_2
       (.I0(Q[12]),
        .I1(cnt_reg[12]),
        .I2(cnt_reg[13]),
        .I3(Q[13]),
        .O(i__carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_3
       (.I0(Q[10]),
        .I1(cnt_reg[10]),
        .I2(cnt_reg[11]),
        .I3(Q[11]),
        .O(i__carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_4
       (.I0(Q[8]),
        .I1(cnt_reg[8]),
        .I2(cnt_reg[9]),
        .I3(Q[9]),
        .O(i__carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5
       (.I0(cnt_reg[15]),
        .I1(Q[15]),
        .I2(Q[14]),
        .I3(cnt_reg[14]),
        .O(i__carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6
       (.I0(cnt_reg[13]),
        .I1(Q[13]),
        .I2(Q[12]),
        .I3(cnt_reg[12]),
        .O(i__carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7
       (.I0(cnt_reg[11]),
        .I1(Q[11]),
        .I2(Q[10]),
        .I3(cnt_reg[10]),
        .O(i__carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8
       (.I0(cnt_reg[9]),
        .I1(Q[9]),
        .I2(Q[8]),
        .I3(cnt_reg[8]),
        .O(i__carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_1
       (.I0(Q[22]),
        .I1(cnt_reg[22]),
        .I2(cnt_reg[23]),
        .I3(Q[23]),
        .O(i__carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_2
       (.I0(Q[20]),
        .I1(cnt_reg[20]),
        .I2(cnt_reg[21]),
        .I3(Q[21]),
        .O(i__carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_3
       (.I0(Q[18]),
        .I1(cnt_reg[18]),
        .I2(cnt_reg[19]),
        .I3(Q[19]),
        .O(i__carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_4
       (.I0(Q[16]),
        .I1(cnt_reg[16]),
        .I2(cnt_reg[17]),
        .I3(Q[17]),
        .O(i__carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_5
       (.I0(cnt_reg[23]),
        .I1(Q[23]),
        .I2(Q[22]),
        .I3(cnt_reg[22]),
        .O(i__carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_6
       (.I0(cnt_reg[21]),
        .I1(Q[21]),
        .I2(Q[20]),
        .I3(cnt_reg[20]),
        .O(i__carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_7
       (.I0(cnt_reg[19]),
        .I1(Q[19]),
        .I2(Q[18]),
        .I3(cnt_reg[18]),
        .O(i__carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_8
       (.I0(cnt_reg[17]),
        .I1(Q[17]),
        .I2(Q[16]),
        .I3(cnt_reg[16]),
        .O(i__carry__1_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_1
       (.I0(Q[30]),
        .I1(cnt_reg[30]),
        .I2(cnt_reg[31]),
        .I3(Q[31]),
        .O(i__carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_2
       (.I0(Q[28]),
        .I1(cnt_reg[28]),
        .I2(cnt_reg[29]),
        .I3(Q[29]),
        .O(i__carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_3
       (.I0(Q[26]),
        .I1(cnt_reg[26]),
        .I2(cnt_reg[27]),
        .I3(Q[27]),
        .O(i__carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_4
       (.I0(Q[24]),
        .I1(cnt_reg[24]),
        .I2(cnt_reg[25]),
        .I3(Q[25]),
        .O(i__carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_5
       (.I0(cnt_reg[31]),
        .I1(Q[31]),
        .I2(Q[30]),
        .I3(cnt_reg[30]),
        .O(i__carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_6
       (.I0(cnt_reg[29]),
        .I1(Q[29]),
        .I2(Q[28]),
        .I3(cnt_reg[28]),
        .O(i__carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_7
       (.I0(cnt_reg[27]),
        .I1(Q[27]),
        .I2(Q[26]),
        .I3(cnt_reg[26]),
        .O(i__carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_8
       (.I0(cnt_reg[25]),
        .I1(Q[25]),
        .I2(Q[24]),
        .I3(cnt_reg[24]),
        .O(i__carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1
       (.I0(Q[6]),
        .I1(\cnt_reg[6]_0 ),
        .I2(\cnt_reg[7]_0 ),
        .I3(Q[7]),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2
       (.I0(Q[4]),
        .I1(\cnt_reg[4]_0 ),
        .I2(\cnt_reg[5]_0 ),
        .I3(Q[5]),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3
       (.I0(Q[2]),
        .I1(\cnt_reg[2]_0 ),
        .I2(\cnt_reg[3]_0 ),
        .I3(Q[3]),
        .O(i__carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4
       (.I0(Q[0]),
        .I1(\cnt_reg[0]_0 ),
        .I2(\cnt_reg[1]_0 ),
        .I3(Q[1]),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(\cnt_reg[7]_0 ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(\cnt_reg[6]_0 ),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(\cnt_reg[5]_0 ),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(\cnt_reg[4]_0 ),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(\cnt_reg[3]_0 ),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(\cnt_reg[2]_0 ),
        .O(i__carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8
       (.I0(\cnt_reg[1]_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\cnt_reg[0]_0 ),
        .O(i__carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h5510)) 
    irq_int_i_1
       (.I0(counter_irq_ack),
        .I1(stop_btn_prev),
        .I2(stop_btn),
        .I3(irq_int),
        .O(irq_int_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    irq_int_reg
       (.C(fc),
        .CE(1'b1),
        .CLR(clear),
        .D(irq_int_i_1_n_0),
        .Q(irq_int));
  FDCE #(
    .INIT(1'b0)) 
    stop_btn_prev_reg
       (.C(fc),
        .CE(1'b1),
        .CLR(clear),
        .D(stop_btn),
        .Q(stop_btn_prev));
endmodule

(* ORIG_REF_NAME = "interrupt_v1_0" *) 
module design_1_interrupt_0_0_interrupt_v1_0
   (s00_axi_awready,
    s00_axi_wready,
    s00_axi_arready,
    s00_axi_rdata,
    s_axi_intr_awready,
    s_axi_intr_wready,
    s_axi_intr_arready,
    led,
    irq,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s_axi_intr_bvalid,
    s_axi_intr_rvalid,
    s_axi_intr_rdata,
    stop_btn,
    btn,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_aclk,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s_axi_intr_aclk,
    s_axi_intr_awaddr,
    s_axi_intr_awvalid,
    s_axi_intr_wvalid,
    s_axi_intr_araddr,
    s_axi_intr_arvalid,
    s_axi_intr_aresetn,
    s00_axi_aresetn,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready,
    s_axi_intr_bready,
    s_axi_intr_rready,
    s_axi_intr_wdata);
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output s_axi_intr_awready;
  output s_axi_intr_wready;
  output s_axi_intr_arready;
  output [7:0]led;
  output irq;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  output s_axi_intr_bvalid;
  output s_axi_intr_rvalid;
  output [0:0]s_axi_intr_rdata;
  input stop_btn;
  input btn;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_aclk;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input s_axi_intr_aclk;
  input [2:0]s_axi_intr_awaddr;
  input s_axi_intr_awvalid;
  input s_axi_intr_wvalid;
  input [2:0]s_axi_intr_araddr;
  input s_axi_intr_arvalid;
  input s_axi_intr_aresetn;
  input s00_axi_aresetn;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;
  input s_axi_intr_bready;
  input s_axi_intr_rready;
  input [0:0]s_axi_intr_wdata;

  wire btn;
  wire counter_irq_ack;
  wire det_intr;
  wire interrupt_v1_0_S00_AXI_inst_n_13;
  wire irq;
  wire [7:0]led;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire s_axi_intr_aclk;
  wire [2:0]s_axi_intr_araddr;
  wire s_axi_intr_aresetn;
  wire s_axi_intr_arready;
  wire s_axi_intr_arvalid;
  wire [2:0]s_axi_intr_awaddr;
  wire s_axi_intr_awready;
  wire s_axi_intr_awvalid;
  wire s_axi_intr_bready;
  wire s_axi_intr_bvalid;
  wire [0:0]s_axi_intr_rdata;
  wire s_axi_intr_rready;
  wire s_axi_intr_rvalid;
  wire [0:0]s_axi_intr_wdata;
  wire s_axi_intr_wready;
  wire s_axi_intr_wvalid;
  wire stop_btn;

  design_1_interrupt_0_0_interrupt_v1_0_S00_AXI interrupt_v1_0_S00_AXI_inst
       (.btn(btn),
        .counter_irq_ack(counter_irq_ack),
        .det_intr(det_intr),
        .irq_int_reg(interrupt_v1_0_S00_AXI_inst_n_13),
        .led(led),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .stop_btn(stop_btn));
  design_1_interrupt_0_0_interrupt_v1_0_S_AXI_INTR interrupt_v1_0_S_AXI_INTR_inst
       (.counter_irq_ack(counter_irq_ack),
        .det_intr(det_intr),
        .\gen_intr_detection[0].gen_intr_level_detect.gen_intr_active_high_detect.det_intr_reg[0]_0 (interrupt_v1_0_S00_AXI_inst_n_13),
        .irq(irq),
        .s_axi_intr_aclk(s_axi_intr_aclk),
        .s_axi_intr_araddr(s_axi_intr_araddr),
        .s_axi_intr_aresetn(s_axi_intr_aresetn),
        .s_axi_intr_arready(s_axi_intr_arready),
        .s_axi_intr_arvalid(s_axi_intr_arvalid),
        .s_axi_intr_awaddr(s_axi_intr_awaddr),
        .s_axi_intr_awready(s_axi_intr_awready),
        .s_axi_intr_awvalid(s_axi_intr_awvalid),
        .s_axi_intr_bready(s_axi_intr_bready),
        .s_axi_intr_bvalid(s_axi_intr_bvalid),
        .s_axi_intr_rdata(s_axi_intr_rdata),
        .s_axi_intr_rready(s_axi_intr_rready),
        .s_axi_intr_rvalid(s_axi_intr_rvalid),
        .s_axi_intr_wdata(s_axi_intr_wdata),
        .s_axi_intr_wready(s_axi_intr_wready),
        .s_axi_intr_wvalid(s_axi_intr_wvalid));
endmodule

(* ORIG_REF_NAME = "interrupt_v1_0_S00_AXI" *) 
module design_1_interrupt_0_0_interrupt_v1_0_S00_AXI
   (s00_axi_wready,
    s00_axi_awready,
    s00_axi_arready,
    led,
    s00_axi_bvalid,
    s00_axi_rvalid,
    irq_int_reg,
    s00_axi_rdata,
    stop_btn,
    btn,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    counter_irq_ack,
    det_intr,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wstrb);
  output s00_axi_wready;
  output s00_axi_awready;
  output s00_axi_arready;
  output [7:0]led;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output irq_int_reg;
  output [31:0]s00_axi_rdata;
  input stop_btn;
  input btn;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input counter_irq_ack;
  input det_intr;
  input [1:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;

  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr_reg_n_0_[2] ;
  wire \axi_awaddr_reg_n_0_[3] ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire btn;
  wire clear;
  wire counter_irq_ack;
  wire det_intr;
  wire irq_int_reg;
  wire [7:0]led;
  wire [31:7]p_0_in;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [31:0]slv_reg0;
  wire slv_reg_rden;
  wire slv_reg_wren__2;
  wire stop_btn;

  LUT6 #(
    .INIT(64'hBFFFBF00BF00BF00)) 
    aw_en_i_1
       (.I0(s00_axi_awready),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(clear));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .S(clear));
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .S(clear));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_arready),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(s00_axi_arready),
        .R(clear));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awready),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awready),
        .I5(\axi_awaddr_reg_n_0_[3] ),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[2] ),
        .R(clear));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[3] ),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_1__0
       (.I0(aw_en_reg_n_0),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awready),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(s00_axi_awready),
        .R(clear));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_awready),
        .I2(s00_axi_wready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(clear));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(s00_axi_arready),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .O(slv_reg_rden));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(clear));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(clear));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(clear));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(clear));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(clear));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(clear));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(clear));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(clear));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(clear));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(clear));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(clear));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(clear));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(clear));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(clear));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(clear));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(clear));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(clear));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(clear));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(clear));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(clear));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(clear));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(clear));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(clear));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(clear));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(clear));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(clear));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(clear));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(clear));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(clear));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(clear));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(clear));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_arready),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(aw_en_reg_n_0),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wready),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(s00_axi_wready),
        .R(clear));
  design_1_interrupt_0_0_counter counter_inst
       (.D(reg_data_out),
        .Q(slv_reg0),
        .axi_araddr(axi_araddr),
        .btn(btn),
        .clear(clear),
        .\cnt_reg[0]_0 (led[0]),
        .\cnt_reg[1]_0 (led[1]),
        .\cnt_reg[2]_0 (led[2]),
        .\cnt_reg[3]_0 (led[3]),
        .\cnt_reg[4]_0 (led[4]),
        .\cnt_reg[5]_0 (led[5]),
        .\cnt_reg[6]_0 (led[6]),
        .\cnt_reg[7]_0 (led[7]),
        .counter_irq_ack(counter_irq_ack),
        .det_intr(det_intr),
        .irq_int_reg_0(irq_int_reg),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .stop_btn(stop_btn));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(s00_axi_wstrb[1]),
        .O(p_0_in[15]));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(s00_axi_wstrb[2]),
        .O(p_0_in[23]));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(s00_axi_wstrb[3]),
        .O(p_0_in[31]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_2 
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_awready),
        .I2(s00_axi_wready),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__2));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(s00_axi_wstrb[0]),
        .O(p_0_in[7]));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(clear));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(clear));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(clear));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(clear));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(clear));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(clear));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(clear));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(clear));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(clear));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(clear));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(clear));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(clear));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(clear));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(clear));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(clear));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(clear));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(clear));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(clear));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(clear));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(clear));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(clear));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(clear));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(clear));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(clear));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(clear));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(clear));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(clear));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(clear));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(clear));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(clear));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(clear));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(clear));
endmodule

(* ORIG_REF_NAME = "interrupt_v1_0_S_AXI_INTR" *) 
module design_1_interrupt_0_0_interrupt_v1_0_S_AXI_INTR
   (s_axi_intr_awready,
    s_axi_intr_wready,
    s_axi_intr_arready,
    det_intr,
    s_axi_intr_bvalid,
    counter_irq_ack,
    s_axi_intr_rvalid,
    s_axi_intr_rdata,
    irq,
    s_axi_intr_aclk,
    \gen_intr_detection[0].gen_intr_level_detect.gen_intr_active_high_detect.det_intr_reg[0]_0 ,
    s_axi_intr_aresetn,
    s_axi_intr_arvalid,
    s_axi_intr_wvalid,
    s_axi_intr_awvalid,
    s_axi_intr_bready,
    s_axi_intr_rready,
    s_axi_intr_wdata,
    s_axi_intr_awaddr,
    s_axi_intr_araddr);
  output s_axi_intr_awready;
  output s_axi_intr_wready;
  output s_axi_intr_arready;
  output det_intr;
  output s_axi_intr_bvalid;
  output counter_irq_ack;
  output s_axi_intr_rvalid;
  output [0:0]s_axi_intr_rdata;
  output irq;
  input s_axi_intr_aclk;
  input \gen_intr_detection[0].gen_intr_level_detect.gen_intr_active_high_detect.det_intr_reg[0]_0 ;
  input s_axi_intr_aresetn;
  input s_axi_intr_arvalid;
  input s_axi_intr_wvalid;
  input s_axi_intr_awvalid;
  input s_axi_intr_bready;
  input s_axi_intr_rready;
  input [0:0]s_axi_intr_wdata;
  input [2:0]s_axi_intr_awaddr;
  input [2:0]s_axi_intr_araddr;

  wire aw_en_i_1__0_n_0;
  wire aw_en_reg_n_0;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr[4]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1__0_n_0;
  wire \axi_rdata[0]_i_1__0_n_0 ;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire axi_rvalid_i_1__0_n_0;
  wire axi_wready0;
  wire counter_irq_ack;
  wire det_intr;
  wire \gen_intr_detection[0].gen_intr_level_detect.gen_intr_active_high_detect.det_intr_reg[0]_0 ;
  wire \gen_intr_detection[0].gen_irq_level.irq_level_high.s_irq_lvl_i_1_n_0 ;
  wire \gen_intr_reg[0].reg_global_intr_en[0]_i_1_n_0 ;
  wire \gen_intr_reg[0].reg_intr_ack[0]_i_1_n_0 ;
  wire \gen_intr_reg[0].reg_intr_en[0]_i_1_n_0 ;
  wire intr_ack_all;
  wire intr_ack_all_ff;
  wire intr_ack_all_i_1_n_0;
  wire intr_all;
  wire intr_all_i_1_n_0;
  wire intr_reg_wren__2;
  wire irq;
  wire [2:0]p_0_in;
  wire p_1_out;
  wire p_3_out;
  wire reg_data_out;
  wire reg_global_intr_en;
  wire reg_intr_en;
  wire reg_intr_pending;
  wire reg_intr_sts;
  wire s_axi_intr_aclk;
  wire [2:0]s_axi_intr_araddr;
  wire s_axi_intr_aresetn;
  wire s_axi_intr_arready;
  wire s_axi_intr_arvalid;
  wire [2:0]s_axi_intr_awaddr;
  wire s_axi_intr_awready;
  wire s_axi_intr_awvalid;
  wire s_axi_intr_bready;
  wire s_axi_intr_bvalid;
  wire [0:0]s_axi_intr_rdata;
  wire s_axi_intr_rready;
  wire s_axi_intr_rvalid;
  wire [0:0]s_axi_intr_wdata;
  wire s_axi_intr_wready;
  wire s_axi_intr_wvalid;
  wire [2:0]sel0;

  LUT6 #(
    .INIT(64'hBFFFBF00BF00BF00)) 
    aw_en_i_1__0
       (.I0(s_axi_intr_awready),
        .I1(s_axi_intr_wvalid),
        .I2(s_axi_intr_awvalid),
        .I3(aw_en_reg_n_0),
        .I4(s_axi_intr_bready),
        .I5(s_axi_intr_bvalid),
        .O(aw_en_i_1__0_n_0));
  FDSE aw_en_reg
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(aw_en_i_1__0_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s_axi_intr_araddr[0]),
        .I1(s_axi_intr_arvalid),
        .I2(s_axi_intr_arready),
        .I3(sel0[0]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s_axi_intr_araddr[1]),
        .I1(s_axi_intr_arvalid),
        .I2(s_axi_intr_arready),
        .I3(sel0[1]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[4]_i_1 
       (.I0(s_axi_intr_araddr[2]),
        .I1(s_axi_intr_arvalid),
        .I2(s_axi_intr_arready),
        .I3(sel0[2]),
        .O(\axi_araddr[4]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(sel0[0]),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[3] 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(sel0[1]),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[4] 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(sel0[2]),
        .S(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1__0
       (.I0(s_axi_intr_arvalid),
        .I1(s_axi_intr_arready),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(s_axi_intr_arready),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s_axi_intr_awaddr[0]),
        .I1(aw_en_reg_n_0),
        .I2(s_axi_intr_awvalid),
        .I3(s_axi_intr_wvalid),
        .I4(s_axi_intr_awready),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s_axi_intr_awaddr[1]),
        .I1(aw_en_reg_n_0),
        .I2(s_axi_intr_awvalid),
        .I3(s_axi_intr_wvalid),
        .I4(s_axi_intr_awready),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[4]_i_1 
       (.I0(s_axi_intr_awaddr[2]),
        .I1(aw_en_reg_n_0),
        .I2(s_axi_intr_awvalid),
        .I3(s_axi_intr_wvalid),
        .I4(s_axi_intr_awready),
        .I5(p_0_in[2]),
        .O(\axi_awaddr[4]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[4] 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(p_0_in[2]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s_axi_intr_aresetn),
        .O(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_2
       (.I0(aw_en_reg_n_0),
        .I1(s_axi_intr_awvalid),
        .I2(s_axi_intr_wvalid),
        .I3(s_axi_intr_awready),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(s_axi_intr_awready),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1__0
       (.I0(s_axi_intr_wvalid),
        .I1(s_axi_intr_awready),
        .I2(s_axi_intr_wready),
        .I3(s_axi_intr_awvalid),
        .I4(s_axi_intr_bready),
        .I5(s_axi_intr_bvalid),
        .O(axi_bvalid_i_1__0_n_0));
  FDRE axi_bvalid_reg
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1__0_n_0),
        .Q(s_axi_intr_bvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_rdata[0]_i_1__0 
       (.I0(reg_data_out),
        .I1(s_axi_intr_arready),
        .I2(s_axi_intr_arvalid),
        .I3(s_axi_intr_rvalid),
        .I4(s_axi_intr_rdata),
        .O(\axi_rdata[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h03AA00AA)) 
    \axi_rdata[0]_i_2 
       (.I0(\axi_rdata[0]_i_3_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(reg_intr_pending),
        .O(reg_data_out));
  LUT6 #(
    .INIT(64'hCACAFFF0CACA0F00)) 
    \axi_rdata[0]_i_3 
       (.I0(reg_intr_en),
        .I1(counter_irq_ack),
        .I2(sel0[1]),
        .I3(reg_global_intr_en),
        .I4(sel0[0]),
        .I5(reg_intr_sts),
        .O(\axi_rdata[0]_i_3_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(\axi_rdata[0]_i_1__0_n_0 ),
        .Q(s_axi_intr_rdata),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1__0
       (.I0(s_axi_intr_arvalid),
        .I1(s_axi_intr_arready),
        .I2(s_axi_intr_rvalid),
        .I3(s_axi_intr_rready),
        .O(axi_rvalid_i_1__0_n_0));
  FDRE axi_rvalid_reg
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1__0_n_0),
        .Q(s_axi_intr_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1__0
       (.I0(aw_en_reg_n_0),
        .I1(s_axi_intr_awvalid),
        .I2(s_axi_intr_wvalid),
        .I3(s_axi_intr_wready),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(s_axi_intr_wready),
        .R(axi_awready_i_1_n_0));
  FDRE \gen_intr_detection[0].gen_intr_level_detect.gen_intr_active_high_detect.det_intr_reg[0] 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(\gen_intr_detection[0].gen_intr_level_detect.gen_intr_active_high_detect.det_intr_reg[0]_0 ),
        .Q(det_intr),
        .R(p_1_out));
  LUT5 #(
    .INIT(32'h44404040)) 
    \gen_intr_detection[0].gen_irq_level.irq_level_high.s_irq_lvl_i_1 
       (.I0(intr_ack_all),
        .I1(s_axi_intr_aresetn),
        .I2(irq),
        .I3(reg_global_intr_en),
        .I4(intr_all),
        .O(\gen_intr_detection[0].gen_irq_level.irq_level_high.s_irq_lvl_i_1_n_0 ));
  FDRE \gen_intr_detection[0].gen_irq_level.irq_level_high.s_irq_lvl_reg 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(\gen_intr_detection[0].gen_irq_level.irq_level_high.s_irq_lvl_i_1_n_0 ),
        .Q(irq),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \gen_intr_reg[0].reg_global_intr_en[0]_i_1 
       (.I0(s_axi_intr_wdata),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(intr_reg_wren__2),
        .I5(reg_global_intr_en),
        .O(\gen_intr_reg[0].reg_global_intr_en[0]_i_1_n_0 ));
  FDRE \gen_intr_reg[0].reg_global_intr_en_reg[0] 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(\gen_intr_reg[0].reg_global_intr_en[0]_i_1_n_0 ),
        .Q(reg_global_intr_en),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h00800000)) 
    \gen_intr_reg[0].reg_intr_ack[0]_i_1 
       (.I0(s_axi_intr_wdata),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(intr_reg_wren__2),
        .O(\gen_intr_reg[0].reg_intr_ack[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_intr_reg[0].reg_intr_ack[0]_i_2 
       (.I0(s_axi_intr_wvalid),
        .I1(s_axi_intr_awready),
        .I2(s_axi_intr_wready),
        .I3(s_axi_intr_awvalid),
        .O(intr_reg_wren__2));
  FDRE \gen_intr_reg[0].reg_intr_ack_reg[0] 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(\gen_intr_reg[0].reg_intr_ack[0]_i_1_n_0 ),
        .Q(counter_irq_ack),
        .R(p_1_out));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \gen_intr_reg[0].reg_intr_en[0]_i_1 
       (.I0(s_axi_intr_wdata),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(p_0_in[0]),
        .I4(intr_reg_wren__2),
        .I5(reg_intr_en),
        .O(\gen_intr_reg[0].reg_intr_en[0]_i_1_n_0 ));
  FDRE \gen_intr_reg[0].reg_intr_en_reg[0] 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(\gen_intr_reg[0].reg_intr_en[0]_i_1_n_0 ),
        .Q(reg_intr_en),
        .R(axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_intr_reg[0].reg_intr_pending[0]_i_1 
       (.I0(reg_intr_en),
        .I1(reg_intr_sts),
        .O(p_3_out));
  FDRE \gen_intr_reg[0].reg_intr_pending_reg[0] 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(p_3_out),
        .Q(reg_intr_pending),
        .R(p_1_out));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_intr_reg[0].reg_intr_sts[0]_i_1 
       (.I0(counter_irq_ack),
        .I1(s_axi_intr_aresetn),
        .O(p_1_out));
  FDRE \gen_intr_reg[0].reg_intr_sts_reg[0] 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(det_intr),
        .Q(reg_intr_sts),
        .R(p_1_out));
  FDRE intr_ack_all_ff_reg
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(intr_ack_all),
        .Q(intr_ack_all_ff),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h08)) 
    intr_ack_all_i_1
       (.I0(counter_irq_ack),
        .I1(s_axi_intr_aresetn),
        .I2(intr_ack_all_ff),
        .O(intr_ack_all_i_1_n_0));
  FDRE intr_ack_all_reg
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(intr_ack_all_i_1_n_0),
        .Q(intr_ack_all),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h08)) 
    intr_all_i_1
       (.I0(reg_intr_pending),
        .I1(s_axi_intr_aresetn),
        .I2(intr_ack_all_ff),
        .O(intr_all_i_1_n_0));
  FDRE intr_all_reg
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(intr_all_i_1_n_0),
        .Q(intr_all),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
