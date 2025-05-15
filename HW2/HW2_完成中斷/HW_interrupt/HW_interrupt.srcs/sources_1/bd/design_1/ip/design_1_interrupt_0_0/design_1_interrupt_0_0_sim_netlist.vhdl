-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed May 14 18:00:53 2025
-- Host        : LAPTOP-FFDNP4IP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/soc/HW_interrupt/HW_interrupt.srcs/sources_1/bd/design_1/ip/design_1_interrupt_0_0/design_1_interrupt_0_0_sim_netlist.vhdl
-- Design      : design_1_interrupt_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_interrupt_0_0_counter is
  port (
    clear : out STD_LOGIC;
    \cnt_reg[0]_0\ : out STD_LOGIC;
    \cnt_reg[1]_0\ : out STD_LOGIC;
    \cnt_reg[2]_0\ : out STD_LOGIC;
    \cnt_reg[3]_0\ : out STD_LOGIC;
    \cnt_reg[4]_0\ : out STD_LOGIC;
    \cnt_reg[5]_0\ : out STD_LOGIC;
    \cnt_reg[6]_0\ : out STD_LOGIC;
    \cnt_reg[7]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    irq_int_reg_0 : out STD_LOGIC;
    stop_btn : in STD_LOGIC;
    btn : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    counter_irq_ack : in STD_LOGIC;
    det_intr : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_interrupt_0_0_counter : entity is "counter";
end design_1_interrupt_0_0_counter;

architecture STRUCTURE of design_1_interrupt_0_0_counter is
  signal btn_prev : STD_LOGIC;
  signal \^clear\ : STD_LOGIC;
  signal \cnt[12]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[12]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[12]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[12]_i_5_n_0\ : STD_LOGIC;
  signal \cnt[16]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[16]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[16]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[16]_i_5_n_0\ : STD_LOGIC;
  signal \cnt[20]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[20]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[20]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[20]_i_5_n_0\ : STD_LOGIC;
  signal \cnt[24]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[24]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[24]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[24]_i_5_n_0\ : STD_LOGIC;
  signal \cnt[28]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[28]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[28]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[28]_i_5_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_5_n_0\ : STD_LOGIC;
  signal \cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[7]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[7]_i_5_n_0\ : STD_LOGIC;
  signal \cnt[7]_i_6_n_0\ : STD_LOGIC;
  signal \cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[8]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[8]_i_5_n_0\ : STD_LOGIC;
  signal cnt_reg : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \^cnt_reg[0]_0\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \^cnt_reg[1]_0\ : STD_LOGIC;
  signal \cnt_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \^cnt_reg[2]_0\ : STD_LOGIC;
  signal \^cnt_reg[3]_0\ : STD_LOGIC;
  signal \cnt_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \^cnt_reg[4]_0\ : STD_LOGIC;
  signal \^cnt_reg[5]_0\ : STD_LOGIC;
  signal \^cnt_reg[6]_0\ : STD_LOGIC;
  signal \^cnt_reg[7]_0\ : STD_LOGIC;
  signal \cnt_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal counting : STD_LOGIC;
  signal counting1 : STD_LOGIC;
  signal counting110_out : STD_LOGIC;
  signal \counting1_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \counting1_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \counting1_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \counting1_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \counting1_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \counting1_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \counting1_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \counting1_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \counting1_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \counting1_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \counting1_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \counting1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \counting1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \counting1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \counting1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal counting_i_10_n_0 : STD_LOGIC;
  signal counting_i_11_n_0 : STD_LOGIC;
  signal counting_i_12_n_0 : STD_LOGIC;
  signal counting_i_1_n_0 : STD_LOGIC;
  signal counting_i_3_n_0 : STD_LOGIC;
  signal counting_i_4_n_0 : STD_LOGIC;
  signal counting_i_5_n_0 : STD_LOGIC;
  signal counting_i_6_n_0 : STD_LOGIC;
  signal counting_i_7_n_0 : STD_LOGIC;
  signal counting_i_8_n_0 : STD_LOGIC;
  signal counting_i_9_n_0 : STD_LOGIC;
  signal \div[0]_i_2_n_0\ : STD_LOGIC;
  signal \div_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \div_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \div_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \div_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \div_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \div_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \div_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \div_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \div_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \div_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \div_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \div_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \div_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \div_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \div_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \div_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \div_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \div_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \div_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \div_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \div_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \div_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \div_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \div_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \div_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \div_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \div_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \div_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \div_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \div_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \div_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \div_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \div_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \div_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \div_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \div_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \div_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \div_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \div_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \div_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \div_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \div_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \div_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \div_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \div_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \div_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \div_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \div_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \div_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \div_reg_n_0_[0]\ : STD_LOGIC;
  signal \div_reg_n_0_[10]\ : STD_LOGIC;
  signal \div_reg_n_0_[11]\ : STD_LOGIC;
  signal \div_reg_n_0_[12]\ : STD_LOGIC;
  signal \div_reg_n_0_[13]\ : STD_LOGIC;
  signal \div_reg_n_0_[14]\ : STD_LOGIC;
  signal \div_reg_n_0_[15]\ : STD_LOGIC;
  signal \div_reg_n_0_[16]\ : STD_LOGIC;
  signal \div_reg_n_0_[17]\ : STD_LOGIC;
  signal \div_reg_n_0_[18]\ : STD_LOGIC;
  signal \div_reg_n_0_[19]\ : STD_LOGIC;
  signal \div_reg_n_0_[1]\ : STD_LOGIC;
  signal \div_reg_n_0_[20]\ : STD_LOGIC;
  signal \div_reg_n_0_[21]\ : STD_LOGIC;
  signal \div_reg_n_0_[22]\ : STD_LOGIC;
  signal \div_reg_n_0_[23]\ : STD_LOGIC;
  signal \div_reg_n_0_[2]\ : STD_LOGIC;
  signal \div_reg_n_0_[3]\ : STD_LOGIC;
  signal \div_reg_n_0_[4]\ : STD_LOGIC;
  signal \div_reg_n_0_[5]\ : STD_LOGIC;
  signal \div_reg_n_0_[6]\ : STD_LOGIC;
  signal \div_reg_n_0_[7]\ : STD_LOGIC;
  signal \div_reg_n_0_[8]\ : STD_LOGIC;
  signal \div_reg_n_0_[9]\ : STD_LOGIC;
  signal done_int : STD_LOGIC;
  signal done_int_i_1_n_0 : STD_LOGIC;
  signal fc : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_8_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal irq_int : STD_LOGIC;
  signal irq_int_i_1_n_0 : STD_LOGIC;
  signal stop_btn_prev : STD_LOGIC;
  signal \NLW_cnt_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_counting1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counting1_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counting1_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counting1_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_div_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_div_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_rdata[18]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of counting_i_12 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of counting_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of irq_int_i_1 : label is "soft_lutpair1";
begin
  clear <= \^clear\;
  \cnt_reg[0]_0\ <= \^cnt_reg[0]_0\;
  \cnt_reg[1]_0\ <= \^cnt_reg[1]_0\;
  \cnt_reg[2]_0\ <= \^cnt_reg[2]_0\;
  \cnt_reg[3]_0\ <= \^cnt_reg[3]_0\;
  \cnt_reg[4]_0\ <= \^cnt_reg[4]_0\;
  \cnt_reg[5]_0\ <= \^cnt_reg[5]_0\;
  \cnt_reg[6]_0\ <= \^cnt_reg[6]_0\;
  \cnt_reg[7]_0\ <= \^cnt_reg[7]_0\;
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => done_int,
      I1 => irq_int,
      I2 => axi_araddr(0),
      I3 => axi_araddr(1),
      I4 => Q(0),
      I5 => \^cnt_reg[0]_0\,
      O => D(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => cnt_reg(10),
      I1 => Q(10),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      O => D(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => cnt_reg(11),
      I1 => Q(11),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      O => D(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => cnt_reg(12),
      I1 => Q(12),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      O => D(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => cnt_reg(13),
      I1 => Q(13),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      O => D(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => cnt_reg(14),
      I1 => Q(14),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      O => D(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => cnt_reg(15),
      I1 => Q(15),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      O => D(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => cnt_reg(16),
      I1 => Q(16),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      O => D(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => cnt_reg(17),
      I1 => Q(17),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      O => D(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => cnt_reg(18),
      I1 => Q(18),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      O => D(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => cnt_reg(19),
      I1 => Q(19),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      O => D(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \^cnt_reg[1]_0\,
      I1 => Q(1),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      O => D(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => cnt_reg(20),
      I1 => Q(20),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      O => D(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => cnt_reg(21),
      I1 => Q(21),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      O => D(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => cnt_reg(22),
      I1 => Q(22),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      O => D(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => cnt_reg(23),
      I1 => Q(23),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      O => D(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => cnt_reg(24),
      I1 => Q(24),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      O => D(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => cnt_reg(25),
      I1 => Q(25),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      O => D(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => cnt_reg(26),
      I1 => Q(26),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      O => D(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => cnt_reg(27),
      I1 => Q(27),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      O => D(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => cnt_reg(28),
      I1 => Q(28),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      O => D(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => cnt_reg(29),
      I1 => Q(29),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      O => D(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \^cnt_reg[2]_0\,
      I1 => Q(2),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      O => D(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => cnt_reg(30),
      I1 => Q(30),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      O => D(30)
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => cnt_reg(31),
      I1 => Q(31),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      O => D(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \^cnt_reg[3]_0\,
      I1 => Q(3),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      O => D(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \^cnt_reg[4]_0\,
      I1 => Q(4),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      O => D(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \^cnt_reg[5]_0\,
      I1 => Q(5),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      O => D(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \^cnt_reg[6]_0\,
      I1 => Q(6),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      O => D(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \^cnt_reg[7]_0\,
      I1 => Q(7),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      O => D(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => cnt_reg(8),
      I1 => Q(8),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      O => D(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => cnt_reg(9),
      I1 => Q(9),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      O => D(9)
    );
btn_prev_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fc,
      CE => '1',
      CLR => \^clear\,
      D => btn,
      Q => btn_prev
    );
\cnt[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counting1,
      I1 => cnt_reg(15),
      O => \cnt[12]_i_2_n_0\
    );
\cnt[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counting1,
      I1 => cnt_reg(14),
      O => \cnt[12]_i_3_n_0\
    );
\cnt[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counting1,
      I1 => cnt_reg(13),
      O => \cnt[12]_i_4_n_0\
    );
\cnt[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counting1,
      I1 => cnt_reg(12),
      O => \cnt[12]_i_5_n_0\
    );
\cnt[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counting1,
      I1 => cnt_reg(19),
      O => \cnt[16]_i_2_n_0\
    );
\cnt[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counting1,
      I1 => cnt_reg(18),
      O => \cnt[16]_i_3_n_0\
    );
\cnt[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counting1,
      I1 => cnt_reg(17),
      O => \cnt[16]_i_4_n_0\
    );
\cnt[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counting1,
      I1 => cnt_reg(16),
      O => \cnt[16]_i_5_n_0\
    );
\cnt[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counting1,
      I1 => cnt_reg(23),
      O => \cnt[20]_i_2_n_0\
    );
\cnt[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counting1,
      I1 => cnt_reg(22),
      O => \cnt[20]_i_3_n_0\
    );
\cnt[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counting1,
      I1 => cnt_reg(21),
      O => \cnt[20]_i_4_n_0\
    );
\cnt[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counting1,
      I1 => cnt_reg(20),
      O => \cnt[20]_i_5_n_0\
    );
\cnt[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counting1,
      I1 => cnt_reg(27),
      O => \cnt[24]_i_2_n_0\
    );
\cnt[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counting1,
      I1 => cnt_reg(26),
      O => \cnt[24]_i_3_n_0\
    );
\cnt[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counting1,
      I1 => cnt_reg(25),
      O => \cnt[24]_i_4_n_0\
    );
\cnt[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counting1,
      I1 => cnt_reg(24),
      O => \cnt[24]_i_5_n_0\
    );
\cnt[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counting1,
      I1 => cnt_reg(31),
      O => \cnt[28]_i_2_n_0\
    );
\cnt[28]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counting1,
      I1 => cnt_reg(30),
      O => \cnt[28]_i_3_n_0\
    );
\cnt[28]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counting1,
      I1 => cnt_reg(29),
      O => \cnt[28]_i_4_n_0\
    );
\cnt[28]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counting1,
      I1 => cnt_reg(28),
      O => \cnt[28]_i_5_n_0\
    );
\cnt[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counting1,
      I1 => \^cnt_reg[3]_0\,
      O => \cnt[3]_i_2_n_0\
    );
\cnt[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counting1,
      I1 => \^cnt_reg[2]_0\,
      O => \cnt[3]_i_3_n_0\
    );
\cnt[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counting1,
      I1 => \^cnt_reg[1]_0\,
      O => \cnt[3]_i_4_n_0\
    );
\cnt[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \^cnt_reg[0]_0\,
      I1 => counting1,
      O => \cnt[3]_i_5_n_0\
    );
\cnt[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^clear\
    );
\cnt[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counting1,
      I1 => \^cnt_reg[7]_0\,
      O => \cnt[7]_i_3_n_0\
    );
\cnt[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counting1,
      I1 => \^cnt_reg[6]_0\,
      O => \cnt[7]_i_4_n_0\
    );
\cnt[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counting1,
      I1 => \^cnt_reg[5]_0\,
      O => \cnt[7]_i_5_n_0\
    );
\cnt[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counting1,
      I1 => \^cnt_reg[4]_0\,
      O => \cnt[7]_i_6_n_0\
    );
\cnt[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counting1,
      I1 => cnt_reg(11),
      O => \cnt[8]_i_2_n_0\
    );
\cnt[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counting1,
      I1 => cnt_reg(10),
      O => \cnt[8]_i_3_n_0\
    );
\cnt[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counting1,
      I1 => cnt_reg(9),
      O => \cnt[8]_i_4_n_0\
    );
\cnt[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counting1,
      I1 => cnt_reg(8),
      O => \cnt[8]_i_5_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fc,
      CE => counting,
      CLR => \^clear\,
      D => \cnt_reg[3]_i_1_n_7\,
      Q => \^cnt_reg[0]_0\
    );
\cnt_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fc,
      CE => counting,
      CLR => \^clear\,
      D => \cnt_reg[8]_i_1_n_5\,
      Q => cnt_reg(10)
    );
\cnt_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fc,
      CE => counting,
      CLR => \^clear\,
      D => \cnt_reg[8]_i_1_n_4\,
      Q => cnt_reg(11)
    );
\cnt_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fc,
      CE => counting,
      CLR => \^clear\,
      D => \cnt_reg[12]_i_1_n_7\,
      Q => cnt_reg(12)
    );
\cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[8]_i_1_n_0\,
      CO(3) => \cnt_reg[12]_i_1_n_0\,
      CO(2) => \cnt_reg[12]_i_1_n_1\,
      CO(1) => \cnt_reg[12]_i_1_n_2\,
      CO(0) => \cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[12]_i_1_n_4\,
      O(2) => \cnt_reg[12]_i_1_n_5\,
      O(1) => \cnt_reg[12]_i_1_n_6\,
      O(0) => \cnt_reg[12]_i_1_n_7\,
      S(3) => \cnt[12]_i_2_n_0\,
      S(2) => \cnt[12]_i_3_n_0\,
      S(1) => \cnt[12]_i_4_n_0\,
      S(0) => \cnt[12]_i_5_n_0\
    );
\cnt_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fc,
      CE => counting,
      CLR => \^clear\,
      D => \cnt_reg[12]_i_1_n_6\,
      Q => cnt_reg(13)
    );
\cnt_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fc,
      CE => counting,
      CLR => \^clear\,
      D => \cnt_reg[12]_i_1_n_5\,
      Q => cnt_reg(14)
    );
\cnt_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fc,
      CE => counting,
      CLR => \^clear\,
      D => \cnt_reg[12]_i_1_n_4\,
      Q => cnt_reg(15)
    );
\cnt_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fc,
      CE => counting,
      CLR => \^clear\,
      D => \cnt_reg[16]_i_1_n_7\,
      Q => cnt_reg(16)
    );
\cnt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[12]_i_1_n_0\,
      CO(3) => \cnt_reg[16]_i_1_n_0\,
      CO(2) => \cnt_reg[16]_i_1_n_1\,
      CO(1) => \cnt_reg[16]_i_1_n_2\,
      CO(0) => \cnt_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[16]_i_1_n_4\,
      O(2) => \cnt_reg[16]_i_1_n_5\,
      O(1) => \cnt_reg[16]_i_1_n_6\,
      O(0) => \cnt_reg[16]_i_1_n_7\,
      S(3) => \cnt[16]_i_2_n_0\,
      S(2) => \cnt[16]_i_3_n_0\,
      S(1) => \cnt[16]_i_4_n_0\,
      S(0) => \cnt[16]_i_5_n_0\
    );
\cnt_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fc,
      CE => counting,
      CLR => \^clear\,
      D => \cnt_reg[16]_i_1_n_6\,
      Q => cnt_reg(17)
    );
\cnt_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fc,
      CE => counting,
      CLR => \^clear\,
      D => \cnt_reg[16]_i_1_n_5\,
      Q => cnt_reg(18)
    );
\cnt_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fc,
      CE => counting,
      CLR => \^clear\,
      D => \cnt_reg[16]_i_1_n_4\,
      Q => cnt_reg(19)
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fc,
      CE => counting,
      CLR => \^clear\,
      D => \cnt_reg[3]_i_1_n_6\,
      Q => \^cnt_reg[1]_0\
    );
\cnt_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fc,
      CE => counting,
      CLR => \^clear\,
      D => \cnt_reg[20]_i_1_n_7\,
      Q => cnt_reg(20)
    );
\cnt_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[16]_i_1_n_0\,
      CO(3) => \cnt_reg[20]_i_1_n_0\,
      CO(2) => \cnt_reg[20]_i_1_n_1\,
      CO(1) => \cnt_reg[20]_i_1_n_2\,
      CO(0) => \cnt_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[20]_i_1_n_4\,
      O(2) => \cnt_reg[20]_i_1_n_5\,
      O(1) => \cnt_reg[20]_i_1_n_6\,
      O(0) => \cnt_reg[20]_i_1_n_7\,
      S(3) => \cnt[20]_i_2_n_0\,
      S(2) => \cnt[20]_i_3_n_0\,
      S(1) => \cnt[20]_i_4_n_0\,
      S(0) => \cnt[20]_i_5_n_0\
    );
\cnt_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fc,
      CE => counting,
      CLR => \^clear\,
      D => \cnt_reg[20]_i_1_n_6\,
      Q => cnt_reg(21)
    );
\cnt_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fc,
      CE => counting,
      CLR => \^clear\,
      D => \cnt_reg[20]_i_1_n_5\,
      Q => cnt_reg(22)
    );
\cnt_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fc,
      CE => counting,
      CLR => \^clear\,
      D => \cnt_reg[20]_i_1_n_4\,
      Q => cnt_reg(23)
    );
\cnt_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fc,
      CE => counting,
      CLR => \^clear\,
      D => \cnt_reg[24]_i_1_n_7\,
      Q => cnt_reg(24)
    );
\cnt_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[20]_i_1_n_0\,
      CO(3) => \cnt_reg[24]_i_1_n_0\,
      CO(2) => \cnt_reg[24]_i_1_n_1\,
      CO(1) => \cnt_reg[24]_i_1_n_2\,
      CO(0) => \cnt_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[24]_i_1_n_4\,
      O(2) => \cnt_reg[24]_i_1_n_5\,
      O(1) => \cnt_reg[24]_i_1_n_6\,
      O(0) => \cnt_reg[24]_i_1_n_7\,
      S(3) => \cnt[24]_i_2_n_0\,
      S(2) => \cnt[24]_i_3_n_0\,
      S(1) => \cnt[24]_i_4_n_0\,
      S(0) => \cnt[24]_i_5_n_0\
    );
\cnt_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fc,
      CE => counting,
      CLR => \^clear\,
      D => \cnt_reg[24]_i_1_n_6\,
      Q => cnt_reg(25)
    );
\cnt_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fc,
      CE => counting,
      CLR => \^clear\,
      D => \cnt_reg[24]_i_1_n_5\,
      Q => cnt_reg(26)
    );
\cnt_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fc,
      CE => counting,
      CLR => \^clear\,
      D => \cnt_reg[24]_i_1_n_4\,
      Q => cnt_reg(27)
    );
\cnt_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fc,
      CE => counting,
      CLR => \^clear\,
      D => \cnt_reg[28]_i_1_n_7\,
      Q => cnt_reg(28)
    );
\cnt_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[24]_i_1_n_0\,
      CO(3) => \NLW_cnt_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \cnt_reg[28]_i_1_n_1\,
      CO(1) => \cnt_reg[28]_i_1_n_2\,
      CO(0) => \cnt_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[28]_i_1_n_4\,
      O(2) => \cnt_reg[28]_i_1_n_5\,
      O(1) => \cnt_reg[28]_i_1_n_6\,
      O(0) => \cnt_reg[28]_i_1_n_7\,
      S(3) => \cnt[28]_i_2_n_0\,
      S(2) => \cnt[28]_i_3_n_0\,
      S(1) => \cnt[28]_i_4_n_0\,
      S(0) => \cnt[28]_i_5_n_0\
    );
\cnt_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fc,
      CE => counting,
      CLR => \^clear\,
      D => \cnt_reg[28]_i_1_n_6\,
      Q => cnt_reg(29)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fc,
      CE => counting,
      CLR => \^clear\,
      D => \cnt_reg[3]_i_1_n_5\,
      Q => \^cnt_reg[2]_0\
    );
\cnt_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fc,
      CE => counting,
      CLR => \^clear\,
      D => \cnt_reg[28]_i_1_n_5\,
      Q => cnt_reg(30)
    );
\cnt_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fc,
      CE => counting,
      CLR => \^clear\,
      D => \cnt_reg[28]_i_1_n_4\,
      Q => cnt_reg(31)
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fc,
      CE => counting,
      CLR => \^clear\,
      D => \cnt_reg[3]_i_1_n_4\,
      Q => \^cnt_reg[3]_0\
    );
\cnt_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_reg[3]_i_1_n_0\,
      CO(2) => \cnt_reg[3]_i_1_n_1\,
      CO(1) => \cnt_reg[3]_i_1_n_2\,
      CO(0) => \cnt_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => counting1,
      O(3) => \cnt_reg[3]_i_1_n_4\,
      O(2) => \cnt_reg[3]_i_1_n_5\,
      O(1) => \cnt_reg[3]_i_1_n_6\,
      O(0) => \cnt_reg[3]_i_1_n_7\,
      S(3) => \cnt[3]_i_2_n_0\,
      S(2) => \cnt[3]_i_3_n_0\,
      S(1) => \cnt[3]_i_4_n_0\,
      S(0) => \cnt[3]_i_5_n_0\
    );
\cnt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fc,
      CE => counting,
      CLR => \^clear\,
      D => \cnt_reg[7]_i_1_n_7\,
      Q => \^cnt_reg[4]_0\
    );
\cnt_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fc,
      CE => counting,
      CLR => \^clear\,
      D => \cnt_reg[7]_i_1_n_6\,
      Q => \^cnt_reg[5]_0\
    );
\cnt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fc,
      CE => counting,
      CLR => \^clear\,
      D => \cnt_reg[7]_i_1_n_5\,
      Q => \^cnt_reg[6]_0\
    );
\cnt_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fc,
      CE => counting,
      CLR => \^clear\,
      D => \cnt_reg[7]_i_1_n_4\,
      Q => \^cnt_reg[7]_0\
    );
\cnt_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[3]_i_1_n_0\,
      CO(3) => \cnt_reg[7]_i_1_n_0\,
      CO(2) => \cnt_reg[7]_i_1_n_1\,
      CO(1) => \cnt_reg[7]_i_1_n_2\,
      CO(0) => \cnt_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[7]_i_1_n_4\,
      O(2) => \cnt_reg[7]_i_1_n_5\,
      O(1) => \cnt_reg[7]_i_1_n_6\,
      O(0) => \cnt_reg[7]_i_1_n_7\,
      S(3) => \cnt[7]_i_3_n_0\,
      S(2) => \cnt[7]_i_4_n_0\,
      S(1) => \cnt[7]_i_5_n_0\,
      S(0) => \cnt[7]_i_6_n_0\
    );
\cnt_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fc,
      CE => counting,
      CLR => \^clear\,
      D => \cnt_reg[8]_i_1_n_7\,
      Q => cnt_reg(8)
    );
\cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[7]_i_1_n_0\,
      CO(3) => \cnt_reg[8]_i_1_n_0\,
      CO(2) => \cnt_reg[8]_i_1_n_1\,
      CO(1) => \cnt_reg[8]_i_1_n_2\,
      CO(0) => \cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[8]_i_1_n_4\,
      O(2) => \cnt_reg[8]_i_1_n_5\,
      O(1) => \cnt_reg[8]_i_1_n_6\,
      O(0) => \cnt_reg[8]_i_1_n_7\,
      S(3) => \cnt[8]_i_2_n_0\,
      S(2) => \cnt[8]_i_3_n_0\,
      S(1) => \cnt[8]_i_4_n_0\,
      S(0) => \cnt[8]_i_5_n_0\
    );
\cnt_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fc,
      CE => counting,
      CLR => \^clear\,
      D => \cnt_reg[8]_i_1_n_6\,
      Q => cnt_reg(9)
    );
\counting1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counting1_inferred__0/i__carry_n_0\,
      CO(2) => \counting1_inferred__0/i__carry_n_1\,
      CO(1) => \counting1_inferred__0/i__carry_n_2\,
      CO(0) => \counting1_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => \NLW_counting1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\counting1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \counting1_inferred__0/i__carry_n_0\,
      CO(3) => \counting1_inferred__0/i__carry__0_n_0\,
      CO(2) => \counting1_inferred__0/i__carry__0_n_1\,
      CO(1) => \counting1_inferred__0/i__carry__0_n_2\,
      CO(0) => \counting1_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1_n_0\,
      DI(2) => \i__carry__0_i_2_n_0\,
      DI(1) => \i__carry__0_i_3_n_0\,
      DI(0) => \i__carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_counting1_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_5_n_0\,
      S(2) => \i__carry__0_i_6_n_0\,
      S(1) => \i__carry__0_i_7_n_0\,
      S(0) => \i__carry__0_i_8_n_0\
    );
\counting1_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counting1_inferred__0/i__carry__0_n_0\,
      CO(3) => \counting1_inferred__0/i__carry__1_n_0\,
      CO(2) => \counting1_inferred__0/i__carry__1_n_1\,
      CO(1) => \counting1_inferred__0/i__carry__1_n_2\,
      CO(0) => \counting1_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__1_i_1_n_0\,
      DI(2) => \i__carry__1_i_2_n_0\,
      DI(1) => \i__carry__1_i_3_n_0\,
      DI(0) => \i__carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_counting1_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_5_n_0\,
      S(2) => \i__carry__1_i_6_n_0\,
      S(1) => \i__carry__1_i_7_n_0\,
      S(0) => \i__carry__1_i_8_n_0\
    );
\counting1_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counting1_inferred__0/i__carry__1_n_0\,
      CO(3) => counting1,
      CO(2) => \counting1_inferred__0/i__carry__2_n_1\,
      CO(1) => \counting1_inferred__0/i__carry__2_n_2\,
      CO(0) => \counting1_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__2_i_1_n_0\,
      DI(2) => \i__carry__2_i_2_n_0\,
      DI(1) => \i__carry__2_i_3_n_0\,
      DI(0) => \i__carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_counting1_inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__2_i_5_n_0\,
      S(2) => \i__carry__2_i_6_n_0\,
      S(1) => \i__carry__2_i_7_n_0\,
      S(0) => \i__carry__2_i_8_n_0\
    );
counting_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0B0B0808080808"
    )
        port map (
      I0 => counting1,
      I1 => counting,
      I2 => counting110_out,
      I3 => counting_i_3_n_0,
      I4 => counting_i_4_n_0,
      I5 => counting_i_5_n_0,
      O => counting_i_1_n_0
    );
counting_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(1),
      O => counting_i_10_n_0
    );
counting_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(8),
      I1 => Q(7),
      I2 => Q(6),
      I3 => Q(5),
      O => counting_i_11_n_0
    );
counting_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(17),
      I1 => Q(18),
      O => counting_i_12_n_0
    );
counting_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => stop_btn,
      I1 => stop_btn_prev,
      O => counting110_out
    );
counting_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => counting_i_6_n_0,
      I1 => Q(27),
      I2 => Q(28),
      I3 => Q(29),
      I4 => Q(30),
      O => counting_i_3_n_0
    );
counting_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => counting_i_7_n_0,
      I1 => counting_i_8_n_0,
      I2 => counting_i_9_n_0,
      I3 => counting_i_10_n_0,
      I4 => counting_i_11_n_0,
      I5 => counting_i_12_n_0,
      O => counting_i_4_n_0
    );
counting_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => btn,
      I1 => btn_prev,
      O => counting_i_5_n_0
    );
counting_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => Q(19),
      I1 => Q(20),
      I2 => Q(21),
      I3 => Q(22),
      I4 => Q(0),
      I5 => Q(31),
      O => counting_i_6_n_0
    );
counting_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(26),
      I1 => Q(25),
      I2 => Q(24),
      I3 => Q(23),
      O => counting_i_7_n_0
    );
counting_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(12),
      I1 => Q(11),
      I2 => Q(10),
      I3 => Q(9),
      O => counting_i_8_n_0
    );
counting_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(16),
      I1 => Q(15),
      I2 => Q(14),
      I3 => Q(13),
      O => counting_i_9_n_0
    );
counting_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fc,
      CE => '1',
      CLR => \^clear\,
      D => counting_i_1_n_0,
      Q => counting
    );
\div[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \div_reg_n_0_[0]\,
      O => \div[0]_i_2_n_0\
    );
\div_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^clear\,
      D => \div_reg[0]_i_1_n_7\,
      Q => \div_reg_n_0_[0]\
    );
\div_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \div_reg[0]_i_1_n_0\,
      CO(2) => \div_reg[0]_i_1_n_1\,
      CO(1) => \div_reg[0]_i_1_n_2\,
      CO(0) => \div_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \div_reg[0]_i_1_n_4\,
      O(2) => \div_reg[0]_i_1_n_5\,
      O(1) => \div_reg[0]_i_1_n_6\,
      O(0) => \div_reg[0]_i_1_n_7\,
      S(3) => \div_reg_n_0_[3]\,
      S(2) => \div_reg_n_0_[2]\,
      S(1) => \div_reg_n_0_[1]\,
      S(0) => \div[0]_i_2_n_0\
    );
\div_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^clear\,
      D => \div_reg[8]_i_1_n_5\,
      Q => \div_reg_n_0_[10]\
    );
\div_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^clear\,
      D => \div_reg[8]_i_1_n_4\,
      Q => \div_reg_n_0_[11]\
    );
\div_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^clear\,
      D => \div_reg[12]_i_1_n_7\,
      Q => \div_reg_n_0_[12]\
    );
\div_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \div_reg[8]_i_1_n_0\,
      CO(3) => \div_reg[12]_i_1_n_0\,
      CO(2) => \div_reg[12]_i_1_n_1\,
      CO(1) => \div_reg[12]_i_1_n_2\,
      CO(0) => \div_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \div_reg[12]_i_1_n_4\,
      O(2) => \div_reg[12]_i_1_n_5\,
      O(1) => \div_reg[12]_i_1_n_6\,
      O(0) => \div_reg[12]_i_1_n_7\,
      S(3) => \div_reg_n_0_[15]\,
      S(2) => \div_reg_n_0_[14]\,
      S(1) => \div_reg_n_0_[13]\,
      S(0) => \div_reg_n_0_[12]\
    );
\div_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^clear\,
      D => \div_reg[12]_i_1_n_6\,
      Q => \div_reg_n_0_[13]\
    );
\div_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^clear\,
      D => \div_reg[12]_i_1_n_5\,
      Q => \div_reg_n_0_[14]\
    );
\div_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^clear\,
      D => \div_reg[12]_i_1_n_4\,
      Q => \div_reg_n_0_[15]\
    );
\div_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^clear\,
      D => \div_reg[16]_i_1_n_7\,
      Q => \div_reg_n_0_[16]\
    );
\div_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \div_reg[12]_i_1_n_0\,
      CO(3) => \div_reg[16]_i_1_n_0\,
      CO(2) => \div_reg[16]_i_1_n_1\,
      CO(1) => \div_reg[16]_i_1_n_2\,
      CO(0) => \div_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \div_reg[16]_i_1_n_4\,
      O(2) => \div_reg[16]_i_1_n_5\,
      O(1) => \div_reg[16]_i_1_n_6\,
      O(0) => \div_reg[16]_i_1_n_7\,
      S(3) => \div_reg_n_0_[19]\,
      S(2) => \div_reg_n_0_[18]\,
      S(1) => \div_reg_n_0_[17]\,
      S(0) => \div_reg_n_0_[16]\
    );
\div_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^clear\,
      D => \div_reg[16]_i_1_n_6\,
      Q => \div_reg_n_0_[17]\
    );
\div_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^clear\,
      D => \div_reg[16]_i_1_n_5\,
      Q => \div_reg_n_0_[18]\
    );
\div_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^clear\,
      D => \div_reg[16]_i_1_n_4\,
      Q => \div_reg_n_0_[19]\
    );
\div_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^clear\,
      D => \div_reg[0]_i_1_n_6\,
      Q => \div_reg_n_0_[1]\
    );
\div_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^clear\,
      D => \div_reg[20]_i_1_n_7\,
      Q => \div_reg_n_0_[20]\
    );
\div_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \div_reg[16]_i_1_n_0\,
      CO(3) => \div_reg[20]_i_1_n_0\,
      CO(2) => \div_reg[20]_i_1_n_1\,
      CO(1) => \div_reg[20]_i_1_n_2\,
      CO(0) => \div_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \div_reg[20]_i_1_n_4\,
      O(2) => \div_reg[20]_i_1_n_5\,
      O(1) => \div_reg[20]_i_1_n_6\,
      O(0) => \div_reg[20]_i_1_n_7\,
      S(3) => \div_reg_n_0_[23]\,
      S(2) => \div_reg_n_0_[22]\,
      S(1) => \div_reg_n_0_[21]\,
      S(0) => \div_reg_n_0_[20]\
    );
\div_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^clear\,
      D => \div_reg[20]_i_1_n_6\,
      Q => \div_reg_n_0_[21]\
    );
\div_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^clear\,
      D => \div_reg[20]_i_1_n_5\,
      Q => \div_reg_n_0_[22]\
    );
\div_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^clear\,
      D => \div_reg[20]_i_1_n_4\,
      Q => \div_reg_n_0_[23]\
    );
\div_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^clear\,
      D => \div_reg[24]_i_1_n_7\,
      Q => fc
    );
\div_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \div_reg[20]_i_1_n_0\,
      CO(3 downto 0) => \NLW_div_reg[24]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_div_reg[24]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \div_reg[24]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => fc
    );
\div_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^clear\,
      D => \div_reg[0]_i_1_n_5\,
      Q => \div_reg_n_0_[2]\
    );
\div_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^clear\,
      D => \div_reg[0]_i_1_n_4\,
      Q => \div_reg_n_0_[3]\
    );
\div_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^clear\,
      D => \div_reg[4]_i_1_n_7\,
      Q => \div_reg_n_0_[4]\
    );
\div_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \div_reg[0]_i_1_n_0\,
      CO(3) => \div_reg[4]_i_1_n_0\,
      CO(2) => \div_reg[4]_i_1_n_1\,
      CO(1) => \div_reg[4]_i_1_n_2\,
      CO(0) => \div_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \div_reg[4]_i_1_n_4\,
      O(2) => \div_reg[4]_i_1_n_5\,
      O(1) => \div_reg[4]_i_1_n_6\,
      O(0) => \div_reg[4]_i_1_n_7\,
      S(3) => \div_reg_n_0_[7]\,
      S(2) => \div_reg_n_0_[6]\,
      S(1) => \div_reg_n_0_[5]\,
      S(0) => \div_reg_n_0_[4]\
    );
\div_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^clear\,
      D => \div_reg[4]_i_1_n_6\,
      Q => \div_reg_n_0_[5]\
    );
\div_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^clear\,
      D => \div_reg[4]_i_1_n_5\,
      Q => \div_reg_n_0_[6]\
    );
\div_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^clear\,
      D => \div_reg[4]_i_1_n_4\,
      Q => \div_reg_n_0_[7]\
    );
\div_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^clear\,
      D => \div_reg[8]_i_1_n_7\,
      Q => \div_reg_n_0_[8]\
    );
\div_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \div_reg[4]_i_1_n_0\,
      CO(3) => \div_reg[8]_i_1_n_0\,
      CO(2) => \div_reg[8]_i_1_n_1\,
      CO(1) => \div_reg[8]_i_1_n_2\,
      CO(0) => \div_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \div_reg[8]_i_1_n_4\,
      O(2) => \div_reg[8]_i_1_n_5\,
      O(1) => \div_reg[8]_i_1_n_6\,
      O(0) => \div_reg[8]_i_1_n_7\,
      S(3) => \div_reg_n_0_[11]\,
      S(2) => \div_reg_n_0_[10]\,
      S(1) => \div_reg_n_0_[9]\,
      S(0) => \div_reg_n_0_[8]\
    );
\div_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^clear\,
      D => \div_reg[8]_i_1_n_6\,
      Q => \div_reg_n_0_[9]\
    );
done_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555503FF55550000"
    )
        port map (
      I0 => counting1,
      I1 => counting_i_3_n_0,
      I2 => counting_i_4_n_0,
      I3 => counting_i_5_n_0,
      I4 => counting,
      I5 => done_int,
      O => done_int_i_1_n_0
    );
done_int_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fc,
      CE => '1',
      CLR => \^clear\,
      D => done_int_i_1_n_0,
      Q => done_int
    );
\gen_intr_detection[0].gen_intr_level_detect.gen_intr_active_high_detect.det_intr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => irq_int,
      I1 => det_intr,
      O => irq_int_reg_0
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => Q(14),
      I1 => cnt_reg(14),
      I2 => cnt_reg(15),
      I3 => Q(15),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => Q(12),
      I1 => cnt_reg(12),
      I2 => cnt_reg(13),
      I3 => Q(13),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => Q(10),
      I1 => cnt_reg(10),
      I2 => cnt_reg(11),
      I3 => Q(11),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => Q(8),
      I1 => cnt_reg(8),
      I2 => cnt_reg(9),
      I3 => Q(9),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cnt_reg(15),
      I1 => Q(15),
      I2 => Q(14),
      I3 => cnt_reg(14),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cnt_reg(13),
      I1 => Q(13),
      I2 => Q(12),
      I3 => cnt_reg(12),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cnt_reg(11),
      I1 => Q(11),
      I2 => Q(10),
      I3 => cnt_reg(10),
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cnt_reg(9),
      I1 => Q(9),
      I2 => Q(8),
      I3 => cnt_reg(8),
      O => \i__carry__0_i_8_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => Q(22),
      I1 => cnt_reg(22),
      I2 => cnt_reg(23),
      I3 => Q(23),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => Q(20),
      I1 => cnt_reg(20),
      I2 => cnt_reg(21),
      I3 => Q(21),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => Q(18),
      I1 => cnt_reg(18),
      I2 => cnt_reg(19),
      I3 => Q(19),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => Q(16),
      I1 => cnt_reg(16),
      I2 => cnt_reg(17),
      I3 => Q(17),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cnt_reg(23),
      I1 => Q(23),
      I2 => Q(22),
      I3 => cnt_reg(22),
      O => \i__carry__1_i_5_n_0\
    );
\i__carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cnt_reg(21),
      I1 => Q(21),
      I2 => Q(20),
      I3 => cnt_reg(20),
      O => \i__carry__1_i_6_n_0\
    );
\i__carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cnt_reg(19),
      I1 => Q(19),
      I2 => Q(18),
      I3 => cnt_reg(18),
      O => \i__carry__1_i_7_n_0\
    );
\i__carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cnt_reg(17),
      I1 => Q(17),
      I2 => Q(16),
      I3 => cnt_reg(16),
      O => \i__carry__1_i_8_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => Q(30),
      I1 => cnt_reg(30),
      I2 => cnt_reg(31),
      I3 => Q(31),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => Q(28),
      I1 => cnt_reg(28),
      I2 => cnt_reg(29),
      I3 => Q(29),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => Q(26),
      I1 => cnt_reg(26),
      I2 => cnt_reg(27),
      I3 => Q(27),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => Q(24),
      I1 => cnt_reg(24),
      I2 => cnt_reg(25),
      I3 => Q(25),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cnt_reg(31),
      I1 => Q(31),
      I2 => Q(30),
      I3 => cnt_reg(30),
      O => \i__carry__2_i_5_n_0\
    );
\i__carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cnt_reg(29),
      I1 => Q(29),
      I2 => Q(28),
      I3 => cnt_reg(28),
      O => \i__carry__2_i_6_n_0\
    );
\i__carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cnt_reg(27),
      I1 => Q(27),
      I2 => Q(26),
      I3 => cnt_reg(26),
      O => \i__carry__2_i_7_n_0\
    );
\i__carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cnt_reg(25),
      I1 => Q(25),
      I2 => Q(24),
      I3 => cnt_reg(24),
      O => \i__carry__2_i_8_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => Q(6),
      I1 => \^cnt_reg[6]_0\,
      I2 => \^cnt_reg[7]_0\,
      I3 => Q(7),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => Q(4),
      I1 => \^cnt_reg[4]_0\,
      I2 => \^cnt_reg[5]_0\,
      I3 => Q(5),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => Q(2),
      I1 => \^cnt_reg[2]_0\,
      I2 => \^cnt_reg[3]_0\,
      I3 => Q(3),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => Q(0),
      I1 => \^cnt_reg[0]_0\,
      I2 => \^cnt_reg[1]_0\,
      I3 => Q(1),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^cnt_reg[7]_0\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => \^cnt_reg[6]_0\,
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^cnt_reg[5]_0\,
      I1 => Q(5),
      I2 => Q(4),
      I3 => \^cnt_reg[4]_0\,
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^cnt_reg[3]_0\,
      I1 => Q(3),
      I2 => Q(2),
      I3 => \^cnt_reg[2]_0\,
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^cnt_reg[1]_0\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \^cnt_reg[0]_0\,
      O => \i__carry_i_8_n_0\
    );
irq_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5510"
    )
        port map (
      I0 => counter_irq_ack,
      I1 => stop_btn_prev,
      I2 => stop_btn,
      I3 => irq_int,
      O => irq_int_i_1_n_0
    );
irq_int_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fc,
      CE => '1',
      CLR => \^clear\,
      D => irq_int_i_1_n_0,
      Q => irq_int
    );
stop_btn_prev_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fc,
      CE => '1',
      CLR => \^clear\,
      D => stop_btn,
      Q => stop_btn_prev
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_interrupt_0_0_interrupt_v1_0_S_AXI_INTR is
  port (
    s_axi_intr_awready : out STD_LOGIC;
    s_axi_intr_wready : out STD_LOGIC;
    s_axi_intr_arready : out STD_LOGIC;
    det_intr : out STD_LOGIC;
    s_axi_intr_bvalid : out STD_LOGIC;
    counter_irq_ack : out STD_LOGIC;
    s_axi_intr_rvalid : out STD_LOGIC;
    s_axi_intr_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    irq : out STD_LOGIC;
    s_axi_intr_aclk : in STD_LOGIC;
    \gen_intr_detection[0].gen_intr_level_detect.gen_intr_active_high_detect.det_intr_reg[0]_0\ : in STD_LOGIC;
    s_axi_intr_aresetn : in STD_LOGIC;
    s_axi_intr_arvalid : in STD_LOGIC;
    s_axi_intr_wvalid : in STD_LOGIC;
    s_axi_intr_awvalid : in STD_LOGIC;
    s_axi_intr_bready : in STD_LOGIC;
    s_axi_intr_rready : in STD_LOGIC;
    s_axi_intr_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_intr_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_intr_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_interrupt_0_0_interrupt_v1_0_S_AXI_INTR : entity is "interrupt_v1_0_S_AXI_INTR";
end design_1_interrupt_0_0_interrupt_v1_0_S_AXI_INTR;

architecture STRUCTURE of design_1_interrupt_0_0_interrupt_v1_0_S_AXI_INTR is
  signal \aw_en_i_1__0_n_0\ : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[4]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal \axi_bvalid_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rvalid_i_1__0_n_0\ : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^counter_irq_ack\ : STD_LOGIC;
  signal \^det_intr\ : STD_LOGIC;
  signal \gen_intr_detection[0].gen_irq_level.irq_level_high.s_irq_lvl_i_1_n_0\ : STD_LOGIC;
  signal \gen_intr_reg[0].reg_global_intr_en[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_intr_reg[0].reg_intr_ack[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_intr_reg[0].reg_intr_en[0]_i_1_n_0\ : STD_LOGIC;
  signal intr_ack_all : STD_LOGIC;
  signal intr_ack_all_ff : STD_LOGIC;
  signal intr_ack_all_i_1_n_0 : STD_LOGIC;
  signal intr_all : STD_LOGIC;
  signal intr_all_i_1_n_0 : STD_LOGIC;
  signal \intr_reg_wren__2\ : STD_LOGIC;
  signal \^irq\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_1_out : STD_LOGIC;
  signal p_3_out : STD_LOGIC;
  signal reg_data_out : STD_LOGIC;
  signal reg_global_intr_en : STD_LOGIC;
  signal reg_intr_en : STD_LOGIC;
  signal reg_intr_pending : STD_LOGIC;
  signal reg_intr_sts : STD_LOGIC;
  signal \^s_axi_intr_arready\ : STD_LOGIC;
  signal \^s_axi_intr_awready\ : STD_LOGIC;
  signal \^s_axi_intr_bvalid\ : STD_LOGIC;
  signal \^s_axi_intr_rdata\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_intr_rvalid\ : STD_LOGIC;
  signal \^s_axi_intr_wready\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_arready_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \axi_rdata[0]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \axi_wready_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of intr_ack_all_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of intr_all_i_1 : label is "soft_lutpair6";
begin
  counter_irq_ack <= \^counter_irq_ack\;
  det_intr <= \^det_intr\;
  irq <= \^irq\;
  s_axi_intr_arready <= \^s_axi_intr_arready\;
  s_axi_intr_awready <= \^s_axi_intr_awready\;
  s_axi_intr_bvalid <= \^s_axi_intr_bvalid\;
  s_axi_intr_rdata(0) <= \^s_axi_intr_rdata\(0);
  s_axi_intr_rvalid <= \^s_axi_intr_rvalid\;
  s_axi_intr_wready <= \^s_axi_intr_wready\;
\aw_en_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFBF00BF00BF00"
    )
        port map (
      I0 => \^s_axi_intr_awready\,
      I1 => s_axi_intr_wvalid,
      I2 => s_axi_intr_awvalid,
      I3 => aw_en_reg_n_0,
      I4 => s_axi_intr_bready,
      I5 => \^s_axi_intr_bvalid\,
      O => \aw_en_i_1__0_n_0\
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \aw_en_i_1__0_n_0\,
      Q => aw_en_reg_n_0,
      S => axi_awready_i_1_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_intr_araddr(0),
      I1 => s_axi_intr_arvalid,
      I2 => \^s_axi_intr_arready\,
      I3 => sel0(0),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_intr_araddr(1),
      I1 => s_axi_intr_arvalid,
      I2 => \^s_axi_intr_arready\,
      I3 => sel0(1),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_intr_araddr(2),
      I1 => s_axi_intr_arvalid,
      I2 => \^s_axi_intr_arready\,
      I3 => sel0(2),
      O => \axi_araddr[4]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => sel0(0),
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => sel0(1),
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \axi_araddr[4]_i_1_n_0\,
      Q => sel0(2),
      S => axi_awready_i_1_n_0
    );
\axi_arready_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_intr_arvalid,
      I1 => \^s_axi_intr_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_intr_arready\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s_axi_intr_awaddr(0),
      I1 => aw_en_reg_n_0,
      I2 => s_axi_intr_awvalid,
      I3 => s_axi_intr_wvalid,
      I4 => \^s_axi_intr_awready\,
      I5 => p_0_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s_axi_intr_awaddr(1),
      I1 => aw_en_reg_n_0,
      I2 => s_axi_intr_awvalid,
      I3 => s_axi_intr_wvalid,
      I4 => \^s_axi_intr_awready\,
      I5 => p_0_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s_axi_intr_awaddr(2),
      I1 => aw_en_reg_n_0,
      I2 => s_axi_intr_awvalid,
      I3 => s_axi_intr_wvalid,
      I4 => \^s_axi_intr_awready\,
      I5 => p_0_in(2),
      O => \axi_awaddr[4]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \axi_awaddr[4]_i_1_n_0\,
      Q => p_0_in(2),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_intr_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => s_axi_intr_awvalid,
      I2 => s_axi_intr_wvalid,
      I3 => \^s_axi_intr_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_intr_awready\,
      R => axi_awready_i_1_n_0
    );
\axi_bvalid_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s_axi_intr_wvalid,
      I1 => \^s_axi_intr_awready\,
      I2 => \^s_axi_intr_wready\,
      I3 => s_axi_intr_awvalid,
      I4 => s_axi_intr_bready,
      I5 => \^s_axi_intr_bvalid\,
      O => \axi_bvalid_i_1__0_n_0\
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \axi_bvalid_i_1__0_n_0\,
      Q => \^s_axi_intr_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => reg_data_out,
      I1 => \^s_axi_intr_arready\,
      I2 => s_axi_intr_arvalid,
      I3 => \^s_axi_intr_rvalid\,
      I4 => \^s_axi_intr_rdata\(0),
      O => \axi_rdata[0]_i_1__0_n_0\
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03AA00AA"
    )
        port map (
      I0 => \axi_rdata[0]_i_3_n_0\,
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => sel0(2),
      I4 => reg_intr_pending,
      O => reg_data_out
    );
\axi_rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CACAFFF0CACA0F00"
    )
        port map (
      I0 => reg_intr_en,
      I1 => \^counter_irq_ack\,
      I2 => sel0(1),
      I3 => reg_global_intr_en,
      I4 => sel0(0),
      I5 => reg_intr_sts,
      O => \axi_rdata[0]_i_3_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \axi_rdata[0]_i_1__0_n_0\,
      Q => \^s_axi_intr_rdata\(0),
      R => axi_awready_i_1_n_0
    );
\axi_rvalid_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s_axi_intr_arvalid,
      I1 => \^s_axi_intr_arready\,
      I2 => \^s_axi_intr_rvalid\,
      I3 => s_axi_intr_rready,
      O => \axi_rvalid_i_1__0_n_0\
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \axi_rvalid_i_1__0_n_0\,
      Q => \^s_axi_intr_rvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_wready_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => s_axi_intr_awvalid,
      I2 => s_axi_intr_wvalid,
      I3 => \^s_axi_intr_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_intr_wready\,
      R => axi_awready_i_1_n_0
    );
\gen_intr_detection[0].gen_intr_level_detect.gen_intr_active_high_detect.det_intr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \gen_intr_detection[0].gen_intr_level_detect.gen_intr_active_high_detect.det_intr_reg[0]_0\,
      Q => \^det_intr\,
      R => p_1_out
    );
\gen_intr_detection[0].gen_irq_level.irq_level_high.s_irq_lvl_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404040"
    )
        port map (
      I0 => intr_ack_all,
      I1 => s_axi_intr_aresetn,
      I2 => \^irq\,
      I3 => reg_global_intr_en,
      I4 => intr_all,
      O => \gen_intr_detection[0].gen_irq_level.irq_level_high.s_irq_lvl_i_1_n_0\
    );
\gen_intr_detection[0].gen_irq_level.irq_level_high.s_irq_lvl_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \gen_intr_detection[0].gen_irq_level.irq_level_high.s_irq_lvl_i_1_n_0\,
      Q => \^irq\,
      R => '0'
    );
\gen_intr_reg[0].reg_global_intr_en[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => s_axi_intr_wdata(0),
      I1 => p_0_in(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => \intr_reg_wren__2\,
      I5 => reg_global_intr_en,
      O => \gen_intr_reg[0].reg_global_intr_en[0]_i_1_n_0\
    );
\gen_intr_reg[0].reg_global_intr_en_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \gen_intr_reg[0].reg_global_intr_en[0]_i_1_n_0\,
      Q => reg_global_intr_en,
      R => axi_awready_i_1_n_0
    );
\gen_intr_reg[0].reg_intr_ack[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => s_axi_intr_wdata(0),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => \intr_reg_wren__2\,
      O => \gen_intr_reg[0].reg_intr_ack[0]_i_1_n_0\
    );
\gen_intr_reg[0].reg_intr_ack[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_intr_wvalid,
      I1 => \^s_axi_intr_awready\,
      I2 => \^s_axi_intr_wready\,
      I3 => s_axi_intr_awvalid,
      O => \intr_reg_wren__2\
    );
\gen_intr_reg[0].reg_intr_ack_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \gen_intr_reg[0].reg_intr_ack[0]_i_1_n_0\,
      Q => \^counter_irq_ack\,
      R => p_1_out
    );
\gen_intr_reg[0].reg_intr_en[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => s_axi_intr_wdata(0),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => p_0_in(0),
      I4 => \intr_reg_wren__2\,
      I5 => reg_intr_en,
      O => \gen_intr_reg[0].reg_intr_en[0]_i_1_n_0\
    );
\gen_intr_reg[0].reg_intr_en_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \gen_intr_reg[0].reg_intr_en[0]_i_1_n_0\,
      Q => reg_intr_en,
      R => axi_awready_i_1_n_0
    );
\gen_intr_reg[0].reg_intr_pending[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => reg_intr_en,
      I1 => reg_intr_sts,
      O => p_3_out
    );
\gen_intr_reg[0].reg_intr_pending_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => p_3_out,
      Q => reg_intr_pending,
      R => p_1_out
    );
\gen_intr_reg[0].reg_intr_sts[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^counter_irq_ack\,
      I1 => s_axi_intr_aresetn,
      O => p_1_out
    );
\gen_intr_reg[0].reg_intr_sts_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \^det_intr\,
      Q => reg_intr_sts,
      R => p_1_out
    );
intr_ack_all_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => intr_ack_all,
      Q => intr_ack_all_ff,
      R => axi_awready_i_1_n_0
    );
intr_ack_all_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^counter_irq_ack\,
      I1 => s_axi_intr_aresetn,
      I2 => intr_ack_all_ff,
      O => intr_ack_all_i_1_n_0
    );
intr_ack_all_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => intr_ack_all_i_1_n_0,
      Q => intr_ack_all,
      R => '0'
    );
intr_all_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => reg_intr_pending,
      I1 => s_axi_intr_aresetn,
      I2 => intr_ack_all_ff,
      O => intr_all_i_1_n_0
    );
intr_all_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => intr_all_i_1_n_0,
      Q => intr_all,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_interrupt_0_0_interrupt_v1_0_S00_AXI is
  port (
    s00_axi_wready : out STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    irq_int_reg : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    stop_btn : in STD_LOGIC;
    btn : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    counter_irq_ack : in STD_LOGIC;
    det_intr : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_interrupt_0_0_interrupt_v1_0_S00_AXI : entity is "interrupt_v1_0_S00_AXI";
end design_1_interrupt_0_0_interrupt_v1_0_S00_AXI;

architecture STRUCTURE of design_1_interrupt_0_0_interrupt_v1_0_S00_AXI is
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[3]\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_arready\ : STD_LOGIC;
  signal \^s00_axi_awready\ : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg_rden : STD_LOGIC;
  signal \slv_reg_wren__2\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \axi_awready_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair3";
begin
  s00_axi_arready <= \^s00_axi_arready\;
  s00_axi_awready <= \^s00_axi_awready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFBF00BF00BF00"
    )
        port map (
      I0 => \^s00_axi_awready\,
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => clear
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      S => clear
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      S => clear
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s00_axi_arready\,
      R => clear
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => \^s00_axi_awready\,
      I5 => \axi_awaddr_reg_n_0_[2]\,
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => \^s00_axi_awready\,
      I5 => \axi_awaddr_reg_n_0_[3]\,
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[2]\,
      R => clear
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[3]\,
      R => clear
    );
\axi_awready_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s00_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s00_axi_awready\,
      R => clear
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^s00_axi_awready\,
      I2 => \^s00_axi_wready\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => clear
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s00_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      O => slv_reg_rden
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => clear
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => clear
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => clear
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => clear
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => clear
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => clear
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => clear
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => clear
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => clear
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => clear
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => clear
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => clear
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => clear
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => clear
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => clear
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => clear
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => clear
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => clear
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => clear
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => clear
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => clear
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => clear
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => clear
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => clear
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => clear
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => clear
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => clear
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => clear
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => clear
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => clear
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => clear
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => clear
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_arready\,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => clear
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s00_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s00_axi_wready\,
      R => clear
    );
counter_inst: entity work.design_1_interrupt_0_0_counter
     port map (
      D(31 downto 0) => reg_data_out(31 downto 0),
      Q(31 downto 0) => slv_reg0(31 downto 0),
      axi_araddr(1 downto 0) => axi_araddr(3 downto 2),
      btn => btn,
      clear => clear,
      \cnt_reg[0]_0\ => led(0),
      \cnt_reg[1]_0\ => led(1),
      \cnt_reg[2]_0\ => led(2),
      \cnt_reg[3]_0\ => led(3),
      \cnt_reg[4]_0\ => led(4),
      \cnt_reg[5]_0\ => led(5),
      \cnt_reg[6]_0\ => led(6),
      \cnt_reg[7]_0\ => led(7),
      counter_irq_ack => counter_irq_ack,
      det_intr => det_intr,
      irq_int_reg_0 => irq_int_reg,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      stop_btn => stop_btn
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => \axi_awaddr_reg_n_0_[3]\,
      I2 => \axi_awaddr_reg_n_0_[2]\,
      I3 => s00_axi_wstrb(1),
      O => p_0_in(15)
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => \axi_awaddr_reg_n_0_[3]\,
      I2 => \axi_awaddr_reg_n_0_[2]\,
      I3 => s00_axi_wstrb(2),
      O => p_0_in(23)
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => \axi_awaddr_reg_n_0_[3]\,
      I2 => \axi_awaddr_reg_n_0_[2]\,
      I3 => s00_axi_wstrb(3),
      O => p_0_in(31)
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^s00_axi_awready\,
      I2 => \^s00_axi_wready\,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__2\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => \axi_awaddr_reg_n_0_[3]\,
      I2 => \axi_awaddr_reg_n_0_[2]\,
      I3 => s00_axi_wstrb(0),
      O => p_0_in(7)
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(7),
      D => s00_axi_wdata(0),
      Q => slv_reg0(0),
      R => clear
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(15),
      D => s00_axi_wdata(10),
      Q => slv_reg0(10),
      R => clear
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(15),
      D => s00_axi_wdata(11),
      Q => slv_reg0(11),
      R => clear
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(15),
      D => s00_axi_wdata(12),
      Q => slv_reg0(12),
      R => clear
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(15),
      D => s00_axi_wdata(13),
      Q => slv_reg0(13),
      R => clear
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(15),
      D => s00_axi_wdata(14),
      Q => slv_reg0(14),
      R => clear
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(15),
      D => s00_axi_wdata(15),
      Q => slv_reg0(15),
      R => clear
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(23),
      D => s00_axi_wdata(16),
      Q => slv_reg0(16),
      R => clear
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(23),
      D => s00_axi_wdata(17),
      Q => slv_reg0(17),
      R => clear
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(23),
      D => s00_axi_wdata(18),
      Q => slv_reg0(18),
      R => clear
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(23),
      D => s00_axi_wdata(19),
      Q => slv_reg0(19),
      R => clear
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(7),
      D => s00_axi_wdata(1),
      Q => slv_reg0(1),
      R => clear
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(23),
      D => s00_axi_wdata(20),
      Q => slv_reg0(20),
      R => clear
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(23),
      D => s00_axi_wdata(21),
      Q => slv_reg0(21),
      R => clear
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(23),
      D => s00_axi_wdata(22),
      Q => slv_reg0(22),
      R => clear
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(23),
      D => s00_axi_wdata(23),
      Q => slv_reg0(23),
      R => clear
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(31),
      D => s00_axi_wdata(24),
      Q => slv_reg0(24),
      R => clear
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(31),
      D => s00_axi_wdata(25),
      Q => slv_reg0(25),
      R => clear
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(31),
      D => s00_axi_wdata(26),
      Q => slv_reg0(26),
      R => clear
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(31),
      D => s00_axi_wdata(27),
      Q => slv_reg0(27),
      R => clear
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(31),
      D => s00_axi_wdata(28),
      Q => slv_reg0(28),
      R => clear
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(31),
      D => s00_axi_wdata(29),
      Q => slv_reg0(29),
      R => clear
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(7),
      D => s00_axi_wdata(2),
      Q => slv_reg0(2),
      R => clear
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(31),
      D => s00_axi_wdata(30),
      Q => slv_reg0(30),
      R => clear
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(31),
      D => s00_axi_wdata(31),
      Q => slv_reg0(31),
      R => clear
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(7),
      D => s00_axi_wdata(3),
      Q => slv_reg0(3),
      R => clear
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(7),
      D => s00_axi_wdata(4),
      Q => slv_reg0(4),
      R => clear
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(7),
      D => s00_axi_wdata(5),
      Q => slv_reg0(5),
      R => clear
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(7),
      D => s00_axi_wdata(6),
      Q => slv_reg0(6),
      R => clear
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(7),
      D => s00_axi_wdata(7),
      Q => slv_reg0(7),
      R => clear
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(15),
      D => s00_axi_wdata(8),
      Q => slv_reg0(8),
      R => clear
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(15),
      D => s00_axi_wdata(9),
      Q => slv_reg0(9),
      R => clear
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_interrupt_0_0_interrupt_v1_0 is
  port (
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_intr_awready : out STD_LOGIC;
    s_axi_intr_wready : out STD_LOGIC;
    s_axi_intr_arready : out STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 7 downto 0 );
    irq : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s_axi_intr_bvalid : out STD_LOGIC;
    s_axi_intr_rvalid : out STD_LOGIC;
    s_axi_intr_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    stop_btn : in STD_LOGIC;
    btn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s_axi_intr_aclk : in STD_LOGIC;
    s_axi_intr_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_intr_awvalid : in STD_LOGIC;
    s_axi_intr_wvalid : in STD_LOGIC;
    s_axi_intr_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_intr_arvalid : in STD_LOGIC;
    s_axi_intr_aresetn : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s_axi_intr_bready : in STD_LOGIC;
    s_axi_intr_rready : in STD_LOGIC;
    s_axi_intr_wdata : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_interrupt_0_0_interrupt_v1_0 : entity is "interrupt_v1_0";
end design_1_interrupt_0_0_interrupt_v1_0;

architecture STRUCTURE of design_1_interrupt_0_0_interrupt_v1_0 is
  signal counter_irq_ack : STD_LOGIC;
  signal det_intr : STD_LOGIC;
  signal interrupt_v1_0_S00_AXI_inst_n_13 : STD_LOGIC;
begin
interrupt_v1_0_S00_AXI_inst: entity work.design_1_interrupt_0_0_interrupt_v1_0_S00_AXI
     port map (
      btn => btn,
      counter_irq_ack => counter_irq_ack,
      det_intr => det_intr,
      irq_int_reg => interrupt_v1_0_S00_AXI_inst_n_13,
      led(7 downto 0) => led(7 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      stop_btn => stop_btn
    );
interrupt_v1_0_S_AXI_INTR_inst: entity work.design_1_interrupt_0_0_interrupt_v1_0_S_AXI_INTR
     port map (
      counter_irq_ack => counter_irq_ack,
      det_intr => det_intr,
      \gen_intr_detection[0].gen_intr_level_detect.gen_intr_active_high_detect.det_intr_reg[0]_0\ => interrupt_v1_0_S00_AXI_inst_n_13,
      irq => irq,
      s_axi_intr_aclk => s_axi_intr_aclk,
      s_axi_intr_araddr(2 downto 0) => s_axi_intr_araddr(2 downto 0),
      s_axi_intr_aresetn => s_axi_intr_aresetn,
      s_axi_intr_arready => s_axi_intr_arready,
      s_axi_intr_arvalid => s_axi_intr_arvalid,
      s_axi_intr_awaddr(2 downto 0) => s_axi_intr_awaddr(2 downto 0),
      s_axi_intr_awready => s_axi_intr_awready,
      s_axi_intr_awvalid => s_axi_intr_awvalid,
      s_axi_intr_bready => s_axi_intr_bready,
      s_axi_intr_bvalid => s_axi_intr_bvalid,
      s_axi_intr_rdata(0) => s_axi_intr_rdata(0),
      s_axi_intr_rready => s_axi_intr_rready,
      s_axi_intr_rvalid => s_axi_intr_rvalid,
      s_axi_intr_wdata(0) => s_axi_intr_wdata(0),
      s_axi_intr_wready => s_axi_intr_wready,
      s_axi_intr_wvalid => s_axi_intr_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_interrupt_0_0 is
  port (
    led : out STD_LOGIC_VECTOR ( 7 downto 0 );
    btn : in STD_LOGIC;
    stop_btn : in STD_LOGIC;
    irq : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s_axi_intr_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_intr_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_intr_awvalid : in STD_LOGIC;
    s_axi_intr_awready : out STD_LOGIC;
    s_axi_intr_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_intr_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_intr_wvalid : in STD_LOGIC;
    s_axi_intr_wready : out STD_LOGIC;
    s_axi_intr_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_intr_bvalid : out STD_LOGIC;
    s_axi_intr_bready : in STD_LOGIC;
    s_axi_intr_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_intr_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_intr_arvalid : in STD_LOGIC;
    s_axi_intr_arready : out STD_LOGIC;
    s_axi_intr_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_intr_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_intr_rvalid : out STD_LOGIC;
    s_axi_intr_rready : in STD_LOGIC;
    s_axi_intr_aclk : in STD_LOGIC;
    s_axi_intr_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_interrupt_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_interrupt_0_0 : entity is "design_1_interrupt_0_0,interrupt_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_interrupt_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_interrupt_0_0 : entity is "interrupt_v1_0,Vivado 2018.3";
end design_1_interrupt_0_0;

architecture STRUCTURE of design_1_interrupt_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_intr_rdata\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of irq : signal is "xilinx.com:signal:interrupt:1.0 IRQ INTERRUPT";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of irq : signal is "XIL_INTERFACENAME IRQ, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute x_interface_parameter of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute x_interface_info of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute x_interface_info of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute x_interface_info of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute x_interface_info of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute x_interface_info of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute x_interface_info of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute x_interface_info of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute x_interface_info of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute x_interface_info of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute x_interface_info of s_axi_intr_aclk : signal is "xilinx.com:signal:clock:1.0 S_AXI_INTR_CLK CLK";
  attribute x_interface_parameter of s_axi_intr_aclk : signal is "XIL_INTERFACENAME S_AXI_INTR_CLK, ASSOCIATED_BUSIF S_AXI_INTR, ASSOCIATED_RESET s_axi_intr_aresetn, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_intr_aresetn : signal is "xilinx.com:signal:reset:1.0 S_AXI_INTR_RST RST";
  attribute x_interface_parameter of s_axi_intr_aresetn : signal is "XIL_INTERFACENAME S_AXI_INTR_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axi_intr_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_INTR ARREADY";
  attribute x_interface_info of s_axi_intr_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_INTR ARVALID";
  attribute x_interface_info of s_axi_intr_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_INTR AWREADY";
  attribute x_interface_info of s_axi_intr_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_INTR AWVALID";
  attribute x_interface_info of s_axi_intr_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_INTR BREADY";
  attribute x_interface_info of s_axi_intr_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_INTR BVALID";
  attribute x_interface_info of s_axi_intr_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_INTR RREADY";
  attribute x_interface_info of s_axi_intr_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_INTR RVALID";
  attribute x_interface_info of s_axi_intr_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_INTR WREADY";
  attribute x_interface_info of s_axi_intr_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_INTR WVALID";
  attribute x_interface_info of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute x_interface_info of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute x_interface_info of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute x_interface_info of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute x_interface_info of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute x_interface_info of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute x_interface_info of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute x_interface_info of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
  attribute x_interface_info of s_axi_intr_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_INTR ARADDR";
  attribute x_interface_info of s_axi_intr_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI_INTR ARPROT";
  attribute x_interface_info of s_axi_intr_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_INTR AWADDR";
  attribute x_interface_parameter of s_axi_intr_awaddr : signal is "XIL_INTERFACENAME S_AXI_INTR, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 5, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_intr_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI_INTR AWPROT";
  attribute x_interface_info of s_axi_intr_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_INTR BRESP";
  attribute x_interface_info of s_axi_intr_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_INTR RDATA";
  attribute x_interface_info of s_axi_intr_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_INTR RRESP";
  attribute x_interface_info of s_axi_intr_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_INTR WDATA";
  attribute x_interface_info of s_axi_intr_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI_INTR WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
  s_axi_intr_bresp(1) <= \<const0>\;
  s_axi_intr_bresp(0) <= \<const0>\;
  s_axi_intr_rdata(31) <= \<const0>\;
  s_axi_intr_rdata(30) <= \<const0>\;
  s_axi_intr_rdata(29) <= \<const0>\;
  s_axi_intr_rdata(28) <= \<const0>\;
  s_axi_intr_rdata(27) <= \<const0>\;
  s_axi_intr_rdata(26) <= \<const0>\;
  s_axi_intr_rdata(25) <= \<const0>\;
  s_axi_intr_rdata(24) <= \<const0>\;
  s_axi_intr_rdata(23) <= \<const0>\;
  s_axi_intr_rdata(22) <= \<const0>\;
  s_axi_intr_rdata(21) <= \<const0>\;
  s_axi_intr_rdata(20) <= \<const0>\;
  s_axi_intr_rdata(19) <= \<const0>\;
  s_axi_intr_rdata(18) <= \<const0>\;
  s_axi_intr_rdata(17) <= \<const0>\;
  s_axi_intr_rdata(16) <= \<const0>\;
  s_axi_intr_rdata(15) <= \<const0>\;
  s_axi_intr_rdata(14) <= \<const0>\;
  s_axi_intr_rdata(13) <= \<const0>\;
  s_axi_intr_rdata(12) <= \<const0>\;
  s_axi_intr_rdata(11) <= \<const0>\;
  s_axi_intr_rdata(10) <= \<const0>\;
  s_axi_intr_rdata(9) <= \<const0>\;
  s_axi_intr_rdata(8) <= \<const0>\;
  s_axi_intr_rdata(7) <= \<const0>\;
  s_axi_intr_rdata(6) <= \<const0>\;
  s_axi_intr_rdata(5) <= \<const0>\;
  s_axi_intr_rdata(4) <= \<const0>\;
  s_axi_intr_rdata(3) <= \<const0>\;
  s_axi_intr_rdata(2) <= \<const0>\;
  s_axi_intr_rdata(1) <= \<const0>\;
  s_axi_intr_rdata(0) <= \^s_axi_intr_rdata\(0);
  s_axi_intr_rresp(1) <= \<const0>\;
  s_axi_intr_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_1_interrupt_0_0_interrupt_v1_0
     port map (
      btn => btn,
      irq => irq,
      led(7 downto 0) => led(7 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      s_axi_intr_aclk => s_axi_intr_aclk,
      s_axi_intr_araddr(2 downto 0) => s_axi_intr_araddr(4 downto 2),
      s_axi_intr_aresetn => s_axi_intr_aresetn,
      s_axi_intr_arready => s_axi_intr_arready,
      s_axi_intr_arvalid => s_axi_intr_arvalid,
      s_axi_intr_awaddr(2 downto 0) => s_axi_intr_awaddr(4 downto 2),
      s_axi_intr_awready => s_axi_intr_awready,
      s_axi_intr_awvalid => s_axi_intr_awvalid,
      s_axi_intr_bready => s_axi_intr_bready,
      s_axi_intr_bvalid => s_axi_intr_bvalid,
      s_axi_intr_rdata(0) => \^s_axi_intr_rdata\(0),
      s_axi_intr_rready => s_axi_intr_rready,
      s_axi_intr_rvalid => s_axi_intr_rvalid,
      s_axi_intr_wdata(0) => s_axi_intr_wdata(0),
      s_axi_intr_wready => s_axi_intr_wready,
      s_axi_intr_wvalid => s_axi_intr_wvalid,
      stop_btn => stop_btn
    );
end STRUCTURE;
