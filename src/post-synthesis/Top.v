// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Jan 30 13:46:52 2025
// Host        : Lab401-00 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -sdf_anno false -force Top.v
// Design      : Top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module Prescaler
   (CLK,
    v_counter_reg,
    AR,
    \Divider_reg[0]_0 ,
    \Divider_reg[3]_0 ,
    E);
  input CLK;
  input [9:9]v_counter_reg;
  input [0:0]AR;
  output [0:0]\Divider_reg[0]_0 ;
  output [0:0]\Divider_reg[3]_0 ;
  input [0:0]E;

  wire [0:0]AR;
  wire CLK;
  wire [3:0]Divider;
  wire \Divider[0]_i_1_n_0 ;
  wire \Divider[1]_i_1_n_0 ;
  wire \Divider[2]_i_1_n_0 ;
  wire \Divider[3]_i_1_n_0 ;
  wire [0:0]\Divider_reg[0]_0 ;
  wire [0:0]\Divider_reg[3]_0 ;
  wire [0:0]E;
  wire [9:9]v_counter_reg;

  LUT1 #(
    .INIT(2'h1)) 
    \Divider[0]_i_1 
       (.I0(Divider[0]),
        .O(\Divider[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Divider[1]_i_1 
       (.I0(Divider[1]),
        .I1(Divider[0]),
        .O(\Divider[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h3F80)) 
    \Divider[2]_i_1 
       (.I0(Divider[3]),
        .I1(Divider[1]),
        .I2(Divider[0]),
        .I3(Divider[2]),
        .O(\Divider[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \Divider[3]_i_1 
       (.I0(Divider[3]),
        .I1(Divider[2]),
        .I2(Divider[1]),
        .I3(Divider[0]),
        .O(\Divider[3]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Divider[0]_i_1_n_0 ),
        .Q(Divider[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Divider[1]_i_1_n_0 ),
        .Q(Divider[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Divider[2]_i_1_n_0 ),
        .Q(Divider[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Divider[3]_i_1_n_0 ),
        .Q(Divider[3]));
  LUT5 #(
    .INIT(32'h02000000)) 
    \h_counter[9]_i_1 
       (.I0(E),
        .I1(Divider[3]),
        .I2(Divider[2]),
        .I3(Divider[1]),
        .I4(Divider[0]),
        .O(\Divider_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \v_counter[9]_i_1 
       (.I0(v_counter_reg),
        .I1(Divider[0]),
        .I2(Divider[1]),
        .I3(Divider[2]),
        .I4(Divider[3]),
        .I5(E),
        .O(\Divider_reg[0]_0 ));
endmodule

(* ECO_CHECKSUM = "27fed5" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
module Top
   (ce,
    clk,
    h_sync,
    rst,
    v_sync,
    pixel,
    seg);
  input ce;
  input clk;
  output h_sync;
  input rst;
  output v_sync;
  output [3:0]pixel;
  input [6:0]seg;

  wire CLR210;
  wire U1_n_0;
  wire ce;
  wire ce_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire h_sync;
  wire h_sync_OBUF;
  wire [3:0]pixel;
  wire [0:0]pixel_OBUF;
  wire rst;
  wire rst_IBUF;
  wire [6:0]seg;
  wire [6:0]seg_IBUF;
  wire v_counter;
  wire v_sync;
  wire v_sync_OBUF;

  VGA7segDisplay U1
       (.AR(rst_IBUF),
        .CLK(clk_IBUF_BUFG),
        .E(CLR210),
        .\h_counter_reg[7]_0 (U1_n_0),
        .h_sync_OBUF(h_sync_OBUF),
        .pixel_OBUF(pixel_OBUF),
        .seg_IBUF(seg_IBUF),
        .\v_counter_reg[9]_0 (v_counter),
        .v_sync_OBUF(v_sync_OBUF));
  Prescaler U2
       (.AR(rst_IBUF),
        .CLK(clk_IBUF_BUFG),
        .\Divider_reg[0]_0 (v_counter),
        .\Divider_reg[3]_0 (CLR210),
        .E(ce_IBUF),
        .v_counter_reg(U1_n_0));
  IBUF ce_IBUF_inst
       (.I(ce),
        .O(ce_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF h_sync_OBUF_inst
       (.I(h_sync_OBUF),
        .O(h_sync));
  OBUF \pixel_OBUF[0]_inst 
       (.I(pixel_OBUF),
        .O(pixel[0]));
  OBUF \pixel_OBUF[1]_inst 
       (.I(pixel_OBUF),
        .O(pixel[1]));
  OBUF \pixel_OBUF[2]_inst 
       (.I(pixel_OBUF),
        .O(pixel[2]));
  OBUF \pixel_OBUF[3]_inst 
       (.I(pixel_OBUF),
        .O(pixel[3]));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  IBUF \seg_IBUF[0]_inst 
       (.I(seg[0]),
        .O(seg_IBUF[0]));
  IBUF \seg_IBUF[1]_inst 
       (.I(seg[1]),
        .O(seg_IBUF[1]));
  IBUF \seg_IBUF[2]_inst 
       (.I(seg[2]),
        .O(seg_IBUF[2]));
  IBUF \seg_IBUF[3]_inst 
       (.I(seg[3]),
        .O(seg_IBUF[3]));
  IBUF \seg_IBUF[4]_inst 
       (.I(seg[4]),
        .O(seg_IBUF[4]));
  IBUF \seg_IBUF[5]_inst 
       (.I(seg[5]),
        .O(seg_IBUF[5]));
  IBUF \seg_IBUF[6]_inst 
       (.I(seg[6]),
        .O(seg_IBUF[6]));
  OBUF v_sync_OBUF_inst
       (.I(v_sync_OBUF),
        .O(v_sync));
endmodule

module VGA7segDisplay
   (CLK,
    \h_counter_reg[7]_0 ,
    h_sync_OBUF,
    v_sync_OBUF,
    AR,
    E,
    pixel_OBUF,
    seg_IBUF,
    \v_counter_reg[9]_0 );
  input CLK;
  output \h_counter_reg[7]_0 ;
  output h_sync_OBUF;
  output v_sync_OBUF;
  input [0:0]AR;
  input [0:0]E;
  output [0:0]pixel_OBUF;
  input [6:0]seg_IBUF;
  input [0:0]\v_counter_reg[9]_0 ;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]E;
  wire \h_counter[8]_i_1_n_0 ;
  wire \h_counter[9]_i_2_n_0 ;
  wire \h_counter[9]_i_3_n_0 ;
  wire [9:0]h_counter_reg;
  wire \h_counter_reg[7]_0 ;
  wire h_sync_OBUF;
  wire [7:0]p_0_in;
  wire [9:0]p_0_in__0;
  wire [0:0]pixel_OBUF;
  wire \pixel_OBUF[3]_inst_i_10_n_0 ;
  wire \pixel_OBUF[3]_inst_i_11_n_0 ;
  wire \pixel_OBUF[3]_inst_i_12_n_0 ;
  wire \pixel_OBUF[3]_inst_i_13_n_0 ;
  wire \pixel_OBUF[3]_inst_i_14_n_0 ;
  wire \pixel_OBUF[3]_inst_i_15_n_0 ;
  wire \pixel_OBUF[3]_inst_i_16_n_0 ;
  wire \pixel_OBUF[3]_inst_i_17_n_0 ;
  wire \pixel_OBUF[3]_inst_i_18_n_0 ;
  wire \pixel_OBUF[3]_inst_i_19_n_0 ;
  wire \pixel_OBUF[3]_inst_i_20_n_0 ;
  wire \pixel_OBUF[3]_inst_i_21_n_0 ;
  wire \pixel_OBUF[3]_inst_i_22_n_0 ;
  wire \pixel_OBUF[3]_inst_i_23_n_0 ;
  wire \pixel_OBUF[3]_inst_i_24_n_0 ;
  wire \pixel_OBUF[3]_inst_i_2_n_0 ;
  wire \pixel_OBUF[3]_inst_i_3_n_0 ;
  wire \pixel_OBUF[3]_inst_i_4_n_0 ;
  wire \pixel_OBUF[3]_inst_i_5_n_0 ;
  wire \pixel_OBUF[3]_inst_i_6_n_0 ;
  wire \pixel_OBUF[3]_inst_i_7_n_0 ;
  wire \pixel_OBUF[3]_inst_i_8_n_0 ;
  wire \pixel_OBUF[3]_inst_i_9_n_0 ;
  wire [6:0]seg_IBUF;
  wire \v_counter[5]_i_2_n_0 ;
  wire \v_counter[6]_i_1_n_0 ;
  wire \v_counter[7]_i_1_n_0 ;
  wire \v_counter[8]_i_1_n_0 ;
  wire \v_counter[8]_i_2_n_0 ;
  wire \v_counter[8]_i_3_n_0 ;
  wire \v_counter[8]_i_4_n_0 ;
  wire \v_counter[9]_i_3_n_0 ;
  wire \v_counter[9]_i_4_n_0 ;
  wire [9:0]v_counter_reg;
  wire [0:0]\v_counter_reg[9]_0 ;
  wire v_sync_OBUF;
  wire v_sync_OBUF_inst_i_2_n_0;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \h_counter[0]_i_1 
       (.I0(h_counter_reg[0]),
        .I1(\h_counter_reg[7]_0 ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \h_counter[1]_i_1 
       (.I0(h_counter_reg[1]),
        .I1(h_counter_reg[0]),
        .I2(\h_counter_reg[7]_0 ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \h_counter[2]_i_1 
       (.I0(h_counter_reg[0]),
        .I1(h_counter_reg[1]),
        .I2(h_counter_reg[2]),
        .I3(\h_counter_reg[7]_0 ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \h_counter[3]_i_1 
       (.I0(\h_counter_reg[7]_0 ),
        .I1(h_counter_reg[1]),
        .I2(h_counter_reg[0]),
        .I3(h_counter_reg[2]),
        .I4(h_counter_reg[3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \h_counter[4]_i_1 
       (.I0(h_counter_reg[3]),
        .I1(h_counter_reg[2]),
        .I2(h_counter_reg[1]),
        .I3(h_counter_reg[0]),
        .I4(h_counter_reg[4]),
        .I5(\h_counter_reg[7]_0 ),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hFEFF000000000000)) 
    \h_counter[4]_i_2 
       (.I0(h_counter_reg[7]),
        .I1(h_counter_reg[6]),
        .I2(h_counter_reg[5]),
        .I3(\h_counter[9]_i_3_n_0 ),
        .I4(h_counter_reg[9]),
        .I5(h_counter_reg[8]),
        .O(\h_counter_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7007)) 
    \h_counter[5]_i_1 
       (.I0(h_counter_reg[8]),
        .I1(h_counter_reg[9]),
        .I2(\h_counter[9]_i_3_n_0 ),
        .I3(h_counter_reg[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h70770700)) 
    \h_counter[6]_i_1 
       (.I0(h_counter_reg[8]),
        .I1(h_counter_reg[9]),
        .I2(\h_counter[9]_i_3_n_0 ),
        .I3(h_counter_reg[5]),
        .I4(h_counter_reg[6]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'h7077777707000000)) 
    \h_counter[7]_i_1 
       (.I0(h_counter_reg[8]),
        .I1(h_counter_reg[9]),
        .I2(\h_counter[9]_i_3_n_0 ),
        .I3(h_counter_reg[5]),
        .I4(h_counter_reg[6]),
        .I5(h_counter_reg[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h5515575500C00000)) 
    \h_counter[8]_i_1 
       (.I0(h_counter_reg[9]),
        .I1(h_counter_reg[5]),
        .I2(h_counter_reg[6]),
        .I3(\h_counter[9]_i_3_n_0 ),
        .I4(h_counter_reg[7]),
        .I5(h_counter_reg[8]),
        .O(\h_counter[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h04000020AAAAAAAA)) 
    \h_counter[9]_i_2 
       (.I0(h_counter_reg[9]),
        .I1(h_counter_reg[7]),
        .I2(\h_counter[9]_i_3_n_0 ),
        .I3(h_counter_reg[6]),
        .I4(h_counter_reg[5]),
        .I5(h_counter_reg[8]),
        .O(\h_counter[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \h_counter[9]_i_3 
       (.I0(h_counter_reg[0]),
        .I1(h_counter_reg[1]),
        .I2(h_counter_reg[2]),
        .I3(h_counter_reg[3]),
        .I4(h_counter_reg[4]),
        .O(\h_counter[9]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \h_counter_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(p_0_in[0]),
        .Q(h_counter_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \h_counter_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(h_counter_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \h_counter_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(p_0_in[2]),
        .Q(h_counter_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \h_counter_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(p_0_in[3]),
        .Q(h_counter_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \h_counter_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(p_0_in[4]),
        .Q(h_counter_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \h_counter_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(p_0_in[5]),
        .Q(h_counter_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \h_counter_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(p_0_in[6]),
        .Q(h_counter_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \h_counter_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(p_0_in[7]),
        .Q(h_counter_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \h_counter_reg[8] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\h_counter[8]_i_1_n_0 ),
        .Q(h_counter_reg[8]));
  FDCE #(
    .INIT(1'b0)) 
    \h_counter_reg[9] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\h_counter[9]_i_2_n_0 ),
        .Q(h_counter_reg[9]));
  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    h_sync_OBUF_inst_i_1
       (.I0(h_counter_reg[6]),
        .I1(h_counter_reg[5]),
        .I2(h_counter_reg[7]),
        .I3(h_counter_reg[8]),
        .I4(h_counter_reg[9]),
        .O(h_sync_OBUF));
  LUT5 #(
    .INIT(32'hFFFFEAEE)) 
    \pixel_OBUF[3]_inst_i_1 
       (.I0(\pixel_OBUF[3]_inst_i_2_n_0 ),
        .I1(\pixel_OBUF[3]_inst_i_3_n_0 ),
        .I2(\pixel_OBUF[3]_inst_i_4_n_0 ),
        .I3(\pixel_OBUF[3]_inst_i_5_n_0 ),
        .I4(\pixel_OBUF[3]_inst_i_6_n_0 ),
        .O(pixel_OBUF));
  LUT6 #(
    .INIT(64'h0000000000007FFF)) 
    \pixel_OBUF[3]_inst_i_10 
       (.I0(h_counter_reg[1]),
        .I1(h_counter_reg[4]),
        .I2(h_counter_reg[2]),
        .I3(h_counter_reg[3]),
        .I4(h_counter_reg[6]),
        .I5(h_counter_reg[5]),
        .O(\pixel_OBUF[3]_inst_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \pixel_OBUF[3]_inst_i_11 
       (.I0(h_counter_reg[8]),
        .I1(h_counter_reg[7]),
        .I2(h_counter_reg[9]),
        .O(\pixel_OBUF[3]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \pixel_OBUF[3]_inst_i_12 
       (.I0(h_counter_reg[6]),
        .I1(h_counter_reg[5]),
        .I2(h_counter_reg[4]),
        .I3(h_counter_reg[9]),
        .I4(h_counter_reg[7]),
        .I5(h_counter_reg[8]),
        .O(\pixel_OBUF[3]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \pixel_OBUF[3]_inst_i_13 
       (.I0(v_counter_reg[9]),
        .I1(v_counter_reg[8]),
        .I2(v_counter_reg[5]),
        .I3(seg_IBUF[0]),
        .I4(v_counter_reg[6]),
        .I5(v_counter_reg[7]),
        .O(\pixel_OBUF[3]_inst_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \pixel_OBUF[3]_inst_i_14 
       (.I0(v_counter_reg[0]),
        .I1(v_counter_reg[1]),
        .O(\pixel_OBUF[3]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hA800000000000000)) 
    \pixel_OBUF[3]_inst_i_15 
       (.I0(\pixel_OBUF[3]_inst_i_18_n_0 ),
        .I1(v_counter_reg[4]),
        .I2(v_counter_reg[3]),
        .I3(seg_IBUF[3]),
        .I4(v_counter_reg[5]),
        .I5(v_counter_reg[6]),
        .O(\pixel_OBUF[3]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    \pixel_OBUF[3]_inst_i_16 
       (.I0(v_counter_reg[5]),
        .I1(v_counter_reg[6]),
        .I2(v_counter_reg[7]),
        .I3(seg_IBUF[6]),
        .I4(v_counter_reg[9]),
        .I5(v_counter_reg[8]),
        .O(\pixel_OBUF[3]_inst_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0D55DD55DD55DD55)) 
    \pixel_OBUF[3]_inst_i_17 
       (.I0(\pixel_OBUF[3]_inst_i_12_n_0 ),
        .I1(h_counter_reg[2]),
        .I2(h_counter_reg[4]),
        .I3(h_counter_reg[3]),
        .I4(\pixel_OBUF[3]_inst_i_24_n_0 ),
        .I5(\pixel_OBUF[3]_inst_i_11_n_0 ),
        .O(\pixel_OBUF[3]_inst_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \pixel_OBUF[3]_inst_i_18 
       (.I0(v_counter_reg[7]),
        .I1(v_counter_reg[8]),
        .I2(v_counter_reg[9]),
        .O(\pixel_OBUF[3]_inst_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \pixel_OBUF[3]_inst_i_19 
       (.I0(v_counter_reg[6]),
        .I1(v_counter_reg[5]),
        .I2(v_counter_reg[4]),
        .O(\pixel_OBUF[3]_inst_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h000022F2)) 
    \pixel_OBUF[3]_inst_i_2 
       (.I0(seg_IBUF[4]),
        .I1(\pixel_OBUF[3]_inst_i_7_n_0 ),
        .I2(seg_IBUF[5]),
        .I3(\pixel_OBUF[3]_inst_i_8_n_0 ),
        .I4(\pixel_OBUF[3]_inst_i_9_n_0 ),
        .O(\pixel_OBUF[3]_inst_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \pixel_OBUF[3]_inst_i_20 
       (.I0(v_counter_reg[9]),
        .I1(v_counter_reg[8]),
        .I2(v_counter_reg[7]),
        .O(\pixel_OBUF[3]_inst_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF00EA000000)) 
    \pixel_OBUF[3]_inst_i_21 
       (.I0(v_counter_reg[2]),
        .I1(v_counter_reg[1]),
        .I2(v_counter_reg[0]),
        .I3(v_counter_reg[5]),
        .I4(v_counter_reg[3]),
        .I5(v_counter_reg[4]),
        .O(\pixel_OBUF[3]_inst_i_21_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \pixel_OBUF[3]_inst_i_22 
       (.I0(v_counter_reg[9]),
        .I1(v_counter_reg[8]),
        .O(\pixel_OBUF[3]_inst_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \pixel_OBUF[3]_inst_i_23 
       (.I0(v_counter_reg[0]),
        .I1(v_counter_reg[1]),
        .I2(v_counter_reg[2]),
        .I3(v_counter_reg[3]),
        .O(\pixel_OBUF[3]_inst_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pixel_OBUF[3]_inst_i_24 
       (.I0(h_counter_reg[5]),
        .I1(h_counter_reg[6]),
        .O(\pixel_OBUF[3]_inst_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h4444444F44444444)) 
    \pixel_OBUF[3]_inst_i_3 
       (.I0(\pixel_OBUF[3]_inst_i_10_n_0 ),
        .I1(\pixel_OBUF[3]_inst_i_11_n_0 ),
        .I2(h_counter_reg[1]),
        .I3(h_counter_reg[3]),
        .I4(h_counter_reg[2]),
        .I5(\pixel_OBUF[3]_inst_i_12_n_0 ),
        .O(\pixel_OBUF[3]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF3FF4FF11015455)) 
    \pixel_OBUF[3]_inst_i_4 
       (.I0(\pixel_OBUF[3]_inst_i_13_n_0 ),
        .I1(v_counter_reg[3]),
        .I2(v_counter_reg[2]),
        .I3(\pixel_OBUF[3]_inst_i_14_n_0 ),
        .I4(v_counter_reg[4]),
        .I5(\pixel_OBUF[3]_inst_i_15_n_0 ),
        .O(\pixel_OBUF[3]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCDDFCCCCCDDFCDD)) 
    \pixel_OBUF[3]_inst_i_5 
       (.I0(v_sync_OBUF_inst_i_2_n_0),
        .I1(\pixel_OBUF[3]_inst_i_16_n_0 ),
        .I2(v_counter_reg[4]),
        .I3(v_counter_reg[3]),
        .I4(\pixel_OBUF[3]_inst_i_14_n_0 ),
        .I5(v_counter_reg[2]),
        .O(\pixel_OBUF[3]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h000022F2)) 
    \pixel_OBUF[3]_inst_i_6 
       (.I0(seg_IBUF[2]),
        .I1(\pixel_OBUF[3]_inst_i_7_n_0 ),
        .I2(seg_IBUF[1]),
        .I3(\pixel_OBUF[3]_inst_i_8_n_0 ),
        .I4(\pixel_OBUF[3]_inst_i_17_n_0 ),
        .O(\pixel_OBUF[3]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h3F7F7F7F7F7F7F77)) 
    \pixel_OBUF[3]_inst_i_7 
       (.I0(v_sync_OBUF_inst_i_2_n_0),
        .I1(\pixel_OBUF[3]_inst_i_18_n_0 ),
        .I2(\pixel_OBUF[3]_inst_i_19_n_0 ),
        .I3(v_counter_reg[2]),
        .I4(v_counter_reg[3]),
        .I5(\v_counter[5]_i_2_n_0 ),
        .O(\pixel_OBUF[3]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hABABABABAB00ABAB)) 
    \pixel_OBUF[3]_inst_i_8 
       (.I0(\pixel_OBUF[3]_inst_i_20_n_0 ),
        .I1(v_counter_reg[6]),
        .I2(\pixel_OBUF[3]_inst_i_21_n_0 ),
        .I3(\pixel_OBUF[3]_inst_i_22_n_0 ),
        .I4(\pixel_OBUF[3]_inst_i_23_n_0 ),
        .I5(v_sync_OBUF_inst_i_2_n_0),
        .O(\pixel_OBUF[3]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFBBFBFBFFF)) 
    \pixel_OBUF[3]_inst_i_9 
       (.I0(h_counter_reg[6]),
        .I1(\pixel_OBUF[3]_inst_i_11_n_0 ),
        .I2(h_counter_reg[4]),
        .I3(h_counter_reg[3]),
        .I4(h_counter_reg[2]),
        .I5(h_counter_reg[5]),
        .O(\pixel_OBUF[3]_inst_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \v_counter[0]_i_1 
       (.I0(v_counter_reg[0]),
        .I1(\v_counter[8]_i_2_n_0 ),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \v_counter[1]_i_1 
       (.I0(v_counter_reg[1]),
        .I1(v_counter_reg[0]),
        .I2(\v_counter[8]_i_2_n_0 ),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \v_counter[2]_i_1 
       (.I0(v_counter_reg[0]),
        .I1(v_counter_reg[1]),
        .I2(v_counter_reg[2]),
        .I3(\v_counter[8]_i_2_n_0 ),
        .O(p_0_in__0[2]));
  LUT5 #(
    .INIT(32'h00007F80)) 
    \v_counter[3]_i_1 
       (.I0(v_counter_reg[2]),
        .I1(v_counter_reg[1]),
        .I2(v_counter_reg[0]),
        .I3(v_counter_reg[3]),
        .I4(\v_counter[8]_i_2_n_0 ),
        .O(p_0_in__0[3]));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \v_counter[4]_i_1 
       (.I0(v_counter_reg[0]),
        .I1(v_counter_reg[1]),
        .I2(v_counter_reg[2]),
        .I3(v_counter_reg[3]),
        .I4(v_counter_reg[4]),
        .I5(\v_counter[8]_i_2_n_0 ),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \v_counter[5]_i_1 
       (.I0(\v_counter[5]_i_2_n_0 ),
        .I1(v_counter_reg[2]),
        .I2(v_counter_reg[4]),
        .I3(v_counter_reg[3]),
        .I4(v_counter_reg[5]),
        .I5(\v_counter[8]_i_2_n_0 ),
        .O(p_0_in__0[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \v_counter[5]_i_2 
       (.I0(v_counter_reg[0]),
        .I1(v_counter_reg[1]),
        .O(\v_counter[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h4510)) 
    \v_counter[6]_i_1 
       (.I0(\v_counter[8]_i_2_n_0 ),
        .I1(\v_counter[8]_i_3_n_0 ),
        .I2(v_counter_reg[5]),
        .I3(v_counter_reg[6]),
        .O(\v_counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h51550400)) 
    \v_counter[7]_i_1 
       (.I0(\v_counter[8]_i_2_n_0 ),
        .I1(v_counter_reg[5]),
        .I2(\v_counter[8]_i_3_n_0 ),
        .I3(v_counter_reg[6]),
        .I4(v_counter_reg[7]),
        .O(\v_counter[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5155555504000000)) 
    \v_counter[8]_i_1 
       (.I0(\v_counter[8]_i_2_n_0 ),
        .I1(v_counter_reg[7]),
        .I2(\v_counter[8]_i_3_n_0 ),
        .I3(v_counter_reg[5]),
        .I4(v_counter_reg[6]),
        .I5(v_counter_reg[8]),
        .O(\v_counter[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAA8A)) 
    \v_counter[8]_i_2 
       (.I0(v_counter_reg[9]),
        .I1(v_counter_reg[8]),
        .I2(\v_counter[8]_i_4_n_0 ),
        .I3(v_counter_reg[7]),
        .I4(v_counter_reg[6]),
        .I5(v_counter_reg[5]),
        .O(\v_counter[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \v_counter[8]_i_3 
       (.I0(v_counter_reg[0]),
        .I1(v_counter_reg[1]),
        .I2(v_counter_reg[2]),
        .I3(v_counter_reg[4]),
        .I4(v_counter_reg[3]),
        .O(\v_counter[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \v_counter[8]_i_4 
       (.I0(v_counter_reg[3]),
        .I1(v_counter_reg[4]),
        .O(\v_counter[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0808080808080838)) 
    \v_counter[9]_i_2 
       (.I0(\v_counter[9]_i_3_n_0 ),
        .I1(v_counter_reg[8]),
        .I2(v_counter_reg[9]),
        .I3(v_counter_reg[4]),
        .I4(v_counter_reg[3]),
        .I5(\v_counter[9]_i_4_n_0 ),
        .O(p_0_in__0[9]));
  LUT4 #(
    .INIT(16'h2000)) 
    \v_counter[9]_i_3 
       (.I0(v_counter_reg[7]),
        .I1(\v_counter[8]_i_3_n_0 ),
        .I2(v_counter_reg[5]),
        .I3(v_counter_reg[6]),
        .O(\v_counter[9]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \v_counter[9]_i_4 
       (.I0(v_counter_reg[7]),
        .I1(v_counter_reg[6]),
        .I2(v_counter_reg[5]),
        .O(\v_counter[9]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \v_counter_reg[0] 
       (.C(CLK),
        .CE(\v_counter_reg[9]_0 ),
        .CLR(AR),
        .D(p_0_in__0[0]),
        .Q(v_counter_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \v_counter_reg[1] 
       (.C(CLK),
        .CE(\v_counter_reg[9]_0 ),
        .CLR(AR),
        .D(p_0_in__0[1]),
        .Q(v_counter_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \v_counter_reg[2] 
       (.C(CLK),
        .CE(\v_counter_reg[9]_0 ),
        .CLR(AR),
        .D(p_0_in__0[2]),
        .Q(v_counter_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \v_counter_reg[3] 
       (.C(CLK),
        .CE(\v_counter_reg[9]_0 ),
        .CLR(AR),
        .D(p_0_in__0[3]),
        .Q(v_counter_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \v_counter_reg[4] 
       (.C(CLK),
        .CE(\v_counter_reg[9]_0 ),
        .CLR(AR),
        .D(p_0_in__0[4]),
        .Q(v_counter_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \v_counter_reg[5] 
       (.C(CLK),
        .CE(\v_counter_reg[9]_0 ),
        .CLR(AR),
        .D(p_0_in__0[5]),
        .Q(v_counter_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \v_counter_reg[6] 
       (.C(CLK),
        .CE(\v_counter_reg[9]_0 ),
        .CLR(AR),
        .D(\v_counter[6]_i_1_n_0 ),
        .Q(v_counter_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \v_counter_reg[7] 
       (.C(CLK),
        .CE(\v_counter_reg[9]_0 ),
        .CLR(AR),
        .D(\v_counter[7]_i_1_n_0 ),
        .Q(v_counter_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \v_counter_reg[8] 
       (.C(CLK),
        .CE(\v_counter_reg[9]_0 ),
        .CLR(AR),
        .D(\v_counter[8]_i_1_n_0 ),
        .Q(v_counter_reg[8]));
  FDCE #(
    .INIT(1'b0)) 
    \v_counter_reg[9] 
       (.C(CLK),
        .CE(\v_counter_reg[9]_0 ),
        .CLR(AR),
        .D(p_0_in__0[9]),
        .Q(v_counter_reg[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    v_sync_OBUF_inst_i_1
       (.I0(v_sync_OBUF_inst_i_2_n_0),
        .I1(v_counter_reg[1]),
        .I2(v_counter_reg[3]),
        .I3(v_counter_reg[2]),
        .I4(v_counter_reg[8]),
        .I5(v_counter_reg[9]),
        .O(v_sync_OBUF));
  LUT4 #(
    .INIT(16'hFFFE)) 
    v_sync_OBUF_inst_i_2
       (.I0(v_counter_reg[4]),
        .I1(v_counter_reg[5]),
        .I2(v_counter_reg[6]),
        .I3(v_counter_reg[7]),
        .O(v_sync_OBUF_inst_i_2_n_0));
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
