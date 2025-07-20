// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Jan 30 12:45:48 2025
// Host        : Lab401-00 running 64-bit major release  (build 9200)
// Command     : write_verilog -force VGA7segDisplay.v
// Design      : VGA7segDisplay
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* HALF_LENGTH = "60" *) (* HALF_WIDTH = "15" *) (* H_BACK_PORCH = "48" *) 
(* H_DISPLAY_TIME = "640" *) (* H_FRONT_PORCH = "16" *) (* H_POS = "400" *) 
(* H_PULSE_WIDTH = "96" *) (* H_SYNC_PULSE = "800" *) (* V_BACK_PORCH = "29" *) 
(* V_DISPLAY_TIME = "480" *) (* V_FRONT_PORCH = "10" *) (* V_POS = "320" *) 
(* V_PULSE_WIDTH = "2" *) (* V_SYNC_PULSE = "521" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module VGA7segDisplay
   (clk,
    ce,
    rst,
    seg,
    h_sync,
    v_sync,
    pixel);
  input clk;
  input ce;
  input rst;
  input [6:0]seg;
  output h_sync;
  output v_sync;
  output [3:0]pixel;

  wire ce;
  wire ce_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire \h_counter[5]_i_2_n_0 ;
  wire \h_counter[9]_i_2_n_0 ;
  wire \h_counter[9]_i_3_n_0 ;
  wire \h_counter[9]_i_4_n_0 ;
  wire [9:0]h_counter_reg;
  wire h_sync;
  wire h_sync_OBUF;
  wire [9:0]p_0_in;
  wire [9:0]p_0_in__0;
  wire [3:0]pixel;
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
  wire \pixel_OBUF[3]_inst_i_25_n_0 ;
  wire \pixel_OBUF[3]_inst_i_26_n_0 ;
  wire \pixel_OBUF[3]_inst_i_2_n_0 ;
  wire \pixel_OBUF[3]_inst_i_3_n_0 ;
  wire \pixel_OBUF[3]_inst_i_4_n_0 ;
  wire \pixel_OBUF[3]_inst_i_5_n_0 ;
  wire \pixel_OBUF[3]_inst_i_6_n_0 ;
  wire \pixel_OBUF[3]_inst_i_7_n_0 ;
  wire \pixel_OBUF[3]_inst_i_8_n_0 ;
  wire \pixel_OBUF[3]_inst_i_9_n_0 ;
  wire rst;
  wire rst_IBUF;
  wire [6:0]seg;
  wire [6:0]seg_IBUF;
  wire v_counter;
  wire \v_counter[7]_i_1_n_0 ;
  wire \v_counter[7]_i_2_n_0 ;
  wire \v_counter[7]_i_3_n_0 ;
  wire \v_counter[8]_i_1_n_0 ;
  wire \v_counter[9]_i_3_n_0 ;
  wire \v_counter[9]_i_4_n_0 ;
  wire [9:0]v_counter_reg;
  wire v_sync;
  wire v_sync_OBUF;
  wire v_sync_OBUF_inst_i_2_n_0;
  wire v_sync_OBUF_inst_i_3_n_0;

  IBUF ce_IBUF_inst
       (.I(ce),
        .O(ce_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \h_counter[0]_i_1 
       (.I0(h_counter_reg[0]),
        .I1(\h_counter[9]_i_3_n_0 ),
        .O(p_0_in[0]));
  LUT3 #(
    .INIT(8'h06)) 
    \h_counter[1]_i_1 
       (.I0(h_counter_reg[1]),
        .I1(h_counter_reg[0]),
        .I2(\h_counter[9]_i_3_n_0 ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \h_counter[2]_i_1 
       (.I0(h_counter_reg[0]),
        .I1(h_counter_reg[1]),
        .I2(h_counter_reg[2]),
        .I3(\h_counter[9]_i_3_n_0 ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \h_counter[3]_i_1 
       (.I0(\h_counter[9]_i_3_n_0 ),
        .I1(h_counter_reg[2]),
        .I2(h_counter_reg[1]),
        .I3(h_counter_reg[0]),
        .I4(h_counter_reg[3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \h_counter[4]_i_1 
       (.I0(\h_counter[9]_i_3_n_0 ),
        .I1(h_counter_reg[3]),
        .I2(h_counter_reg[2]),
        .I3(h_counter_reg[1]),
        .I4(h_counter_reg[0]),
        .I5(h_counter_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \h_counter[5]_i_1 
       (.I0(h_counter_reg[4]),
        .I1(\h_counter[5]_i_2_n_0 ),
        .I2(h_counter_reg[2]),
        .I3(h_counter_reg[3]),
        .I4(h_counter_reg[5]),
        .I5(\h_counter[9]_i_3_n_0 ),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \h_counter[5]_i_2 
       (.I0(h_counter_reg[0]),
        .I1(h_counter_reg[1]),
        .O(\h_counter[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \h_counter[6]_i_1 
       (.I0(\h_counter[9]_i_2_n_0 ),
        .I1(h_counter_reg[6]),
        .I2(\h_counter[9]_i_3_n_0 ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00D2)) 
    \h_counter[7]_i_1 
       (.I0(h_counter_reg[6]),
        .I1(\h_counter[9]_i_2_n_0 ),
        .I2(h_counter_reg[7]),
        .I3(\h_counter[9]_i_3_n_0 ),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0000BF40)) 
    \h_counter[8]_i_1 
       (.I0(\h_counter[9]_i_2_n_0 ),
        .I1(h_counter_reg[6]),
        .I2(h_counter_reg[7]),
        .I3(h_counter_reg[8]),
        .I4(\h_counter[9]_i_3_n_0 ),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'h00000000BFFF4000)) 
    \h_counter[9]_i_1 
       (.I0(\h_counter[9]_i_2_n_0 ),
        .I1(h_counter_reg[6]),
        .I2(h_counter_reg[7]),
        .I3(h_counter_reg[8]),
        .I4(h_counter_reg[9]),
        .I5(\h_counter[9]_i_3_n_0 ),
        .O(p_0_in[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \h_counter[9]_i_2 
       (.I0(h_counter_reg[0]),
        .I1(h_counter_reg[1]),
        .I2(h_counter_reg[2]),
        .I3(h_counter_reg[5]),
        .I4(h_counter_reg[3]),
        .I5(h_counter_reg[4]),
        .O(\h_counter[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \h_counter[9]_i_3 
       (.I0(h_counter_reg[5]),
        .I1(h_counter_reg[7]),
        .I2(h_counter_reg[6]),
        .I3(\h_counter[9]_i_4_n_0 ),
        .I4(h_counter_reg[9]),
        .I5(h_counter_reg[8]),
        .O(\h_counter[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \h_counter[9]_i_4 
       (.I0(h_counter_reg[4]),
        .I1(h_counter_reg[0]),
        .I2(h_counter_reg[1]),
        .I3(h_counter_reg[2]),
        .I4(h_counter_reg[3]),
        .O(\h_counter[9]_i_4_n_0 ));
  FDCE \h_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .CLR(rst_IBUF),
        .D(p_0_in[0]),
        .Q(h_counter_reg[0]));
  FDCE \h_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .CLR(rst_IBUF),
        .D(p_0_in[1]),
        .Q(h_counter_reg[1]));
  FDCE \h_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .CLR(rst_IBUF),
        .D(p_0_in[2]),
        .Q(h_counter_reg[2]));
  FDCE \h_counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .CLR(rst_IBUF),
        .D(p_0_in[3]),
        .Q(h_counter_reg[3]));
  FDCE \h_counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .CLR(rst_IBUF),
        .D(p_0_in[4]),
        .Q(h_counter_reg[4]));
  FDCE \h_counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .CLR(rst_IBUF),
        .D(p_0_in[5]),
        .Q(h_counter_reg[5]));
  FDCE \h_counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .CLR(rst_IBUF),
        .D(p_0_in[6]),
        .Q(h_counter_reg[6]));
  FDCE \h_counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .CLR(rst_IBUF),
        .D(p_0_in[7]),
        .Q(h_counter_reg[7]));
  FDCE \h_counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .CLR(rst_IBUF),
        .D(p_0_in[8]),
        .Q(h_counter_reg[8]));
  FDCE \h_counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .CLR(rst_IBUF),
        .D(p_0_in[9]),
        .Q(h_counter_reg[9]));
  OBUF h_sync_OBUF_inst
       (.I(h_sync_OBUF),
        .O(h_sync));
  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    h_sync_OBUF_inst_i_1
       (.I0(h_counter_reg[6]),
        .I1(h_counter_reg[5]),
        .I2(h_counter_reg[7]),
        .I3(h_counter_reg[9]),
        .I4(h_counter_reg[8]),
        .O(h_sync_OBUF));
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
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0F02)) 
    \pixel_OBUF[3]_inst_i_1 
       (.I0(\pixel_OBUF[3]_inst_i_2_n_0 ),
        .I1(\pixel_OBUF[3]_inst_i_3_n_0 ),
        .I2(\pixel_OBUF[3]_inst_i_4_n_0 ),
        .I3(\pixel_OBUF[3]_inst_i_5_n_0 ),
        .I4(\pixel_OBUF[3]_inst_i_6_n_0 ),
        .I5(\pixel_OBUF[3]_inst_i_7_n_0 ),
        .O(pixel_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0007)) 
    \pixel_OBUF[3]_inst_i_10 
       (.I0(h_counter_reg[3]),
        .I1(h_counter_reg[2]),
        .I2(h_counter_reg[5]),
        .I3(h_counter_reg[4]),
        .O(\pixel_OBUF[3]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFFFFFFFFFFFFF)) 
    \pixel_OBUF[3]_inst_i_11 
       (.I0(v_counter_reg[6]),
        .I1(\pixel_OBUF[3]_inst_i_20_n_0 ),
        .I2(v_counter_reg[9]),
        .I3(seg_IBUF[0]),
        .I4(v_counter_reg[7]),
        .I5(v_counter_reg[8]),
        .O(\pixel_OBUF[3]_inst_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFFF800)) 
    \pixel_OBUF[3]_inst_i_12 
       (.I0(v_counter_reg[3]),
        .I1(\pixel_OBUF[3]_inst_i_21_n_0 ),
        .I2(v_counter_reg[4]),
        .I3(v_counter_reg[5]),
        .I4(v_counter_reg[6]),
        .O(\pixel_OBUF[3]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1FFF)) 
    \pixel_OBUF[3]_inst_i_13 
       (.I0(\pixel_OBUF[3]_inst_i_22_n_0 ),
        .I1(v_counter_reg[6]),
        .I2(v_counter_reg[7]),
        .I3(seg_IBUF[3]),
        .I4(v_counter_reg[8]),
        .I5(v_counter_reg[9]),
        .O(\pixel_OBUF[3]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFE0000000000000)) 
    \pixel_OBUF[3]_inst_i_14 
       (.I0(v_counter_reg[3]),
        .I1(\v_counter[7]_i_3_n_0 ),
        .I2(v_counter_reg[4]),
        .I3(v_counter_reg[5]),
        .I4(v_counter_reg[6]),
        .I5(v_counter_reg[7]),
        .O(\pixel_OBUF[3]_inst_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFFEFFFFF)) 
    \pixel_OBUF[3]_inst_i_15 
       (.I0(\pixel_OBUF[3]_inst_i_23_n_0 ),
        .I1(h_counter_reg[7]),
        .I2(h_counter_reg[6]),
        .I3(h_counter_reg[9]),
        .I4(h_counter_reg[8]),
        .O(\pixel_OBUF[3]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h777777777777777F)) 
    \pixel_OBUF[3]_inst_i_16 
       (.I0(h_counter_reg[6]),
        .I1(h_counter_reg[5]),
        .I2(h_counter_reg[3]),
        .I3(h_counter_reg[4]),
        .I4(h_counter_reg[2]),
        .I5(\h_counter[5]_i_2_n_0 ),
        .O(\pixel_OBUF[3]_inst_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFEFFFFF)) 
    \pixel_OBUF[3]_inst_i_17 
       (.I0(v_counter_reg[9]),
        .I1(\pixel_OBUF[3]_inst_i_24_n_0 ),
        .I2(v_counter_reg[6]),
        .I3(v_counter_reg[7]),
        .I4(v_counter_reg[8]),
        .O(\pixel_OBUF[3]_inst_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFBFBFFFFFBFB)) 
    \pixel_OBUF[3]_inst_i_18 
       (.I0(\pixel_OBUF[3]_inst_i_24_n_0 ),
        .I1(v_counter_reg[8]),
        .I2(v_counter_reg[9]),
        .I3(v_sync_OBUF_inst_i_2_n_0),
        .I4(v_counter_reg[7]),
        .I5(v_counter_reg[6]),
        .O(\pixel_OBUF[3]_inst_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFCFFFEFFFFFFF)) 
    \pixel_OBUF[3]_inst_i_19 
       (.I0(\pixel_OBUF[3]_inst_i_25_n_0 ),
        .I1(h_counter_reg[9]),
        .I2(h_counter_reg[8]),
        .I3(h_counter_reg[7]),
        .I4(h_counter_reg[6]),
        .I5(\pixel_OBUF[3]_inst_i_26_n_0 ),
        .O(\pixel_OBUF[3]_inst_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E000)) 
    \pixel_OBUF[3]_inst_i_2 
       (.I0(\pixel_OBUF[3]_inst_i_8_n_0 ),
        .I1(v_counter_reg[6]),
        .I2(v_counter_reg[8]),
        .I3(seg_IBUF[6]),
        .I4(v_counter_reg[7]),
        .I5(v_counter_reg[9]),
        .O(\pixel_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    \pixel_OBUF[3]_inst_i_20 
       (.I0(v_counter_reg[4]),
        .I1(v_counter_reg[5]),
        .I2(v_counter_reg[3]),
        .I3(v_counter_reg[0]),
        .I4(v_counter_reg[1]),
        .I5(v_counter_reg[2]),
        .O(\pixel_OBUF[3]_inst_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \pixel_OBUF[3]_inst_i_21 
       (.I0(v_counter_reg[2]),
        .I1(v_counter_reg[1]),
        .I2(v_counter_reg[0]),
        .O(\pixel_OBUF[3]_inst_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h8080808080808000)) 
    \pixel_OBUF[3]_inst_i_22 
       (.I0(v_counter_reg[3]),
        .I1(v_counter_reg[4]),
        .I2(v_counter_reg[5]),
        .I3(v_counter_reg[0]),
        .I4(v_counter_reg[1]),
        .I5(v_counter_reg[2]),
        .O(\pixel_OBUF[3]_inst_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000057)) 
    \pixel_OBUF[3]_inst_i_23 
       (.I0(h_counter_reg[2]),
        .I1(h_counter_reg[0]),
        .I2(h_counter_reg[1]),
        .I3(h_counter_reg[3]),
        .I4(h_counter_reg[4]),
        .I5(h_counter_reg[5]),
        .O(\pixel_OBUF[3]_inst_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \pixel_OBUF[3]_inst_i_24 
       (.I0(v_counter_reg[8]),
        .I1(v_counter_reg[2]),
        .I2(v_counter_reg[5]),
        .I3(v_counter_reg[6]),
        .I4(v_counter_reg[3]),
        .I5(v_counter_reg[4]),
        .O(\pixel_OBUF[3]_inst_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEAAAAAAAAAAAA)) 
    \pixel_OBUF[3]_inst_i_25 
       (.I0(h_counter_reg[5]),
        .I1(h_counter_reg[2]),
        .I2(h_counter_reg[1]),
        .I3(h_counter_reg[0]),
        .I4(h_counter_reg[3]),
        .I5(h_counter_reg[4]),
        .O(\pixel_OBUF[3]_inst_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h8000800080000000)) 
    \pixel_OBUF[3]_inst_i_26 
       (.I0(h_counter_reg[5]),
        .I1(h_counter_reg[3]),
        .I2(h_counter_reg[4]),
        .I3(h_counter_reg[2]),
        .I4(h_counter_reg[0]),
        .I5(h_counter_reg[1]),
        .O(\pixel_OBUF[3]_inst_i_26_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAA80)) 
    \pixel_OBUF[3]_inst_i_3 
       (.I0(v_counter_reg[6]),
        .I1(\v_counter[7]_i_3_n_0 ),
        .I2(v_counter_reg[3]),
        .I3(v_counter_reg[4]),
        .I4(v_counter_reg[5]),
        .O(\pixel_OBUF[3]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFEEFFEEFFFFFF)) 
    \pixel_OBUF[3]_inst_i_4 
       (.I0(h_counter_reg[9]),
        .I1(\pixel_OBUF[3]_inst_i_9_n_0 ),
        .I2(\pixel_OBUF[3]_inst_i_10_n_0 ),
        .I3(h_counter_reg[8]),
        .I4(h_counter_reg[7]),
        .I5(h_counter_reg[6]),
        .O(\pixel_OBUF[3]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h444F)) 
    \pixel_OBUF[3]_inst_i_5 
       (.I0(\pixel_OBUF[3]_inst_i_11_n_0 ),
        .I1(\pixel_OBUF[3]_inst_i_12_n_0 ),
        .I2(\pixel_OBUF[3]_inst_i_13_n_0 ),
        .I3(\pixel_OBUF[3]_inst_i_14_n_0 ),
        .O(\pixel_OBUF[3]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0040444400400040)) 
    \pixel_OBUF[3]_inst_i_6 
       (.I0(\pixel_OBUF[3]_inst_i_15_n_0 ),
        .I1(\pixel_OBUF[3]_inst_i_16_n_0 ),
        .I2(seg_IBUF[5]),
        .I3(\pixel_OBUF[3]_inst_i_17_n_0 ),
        .I4(\pixel_OBUF[3]_inst_i_18_n_0 ),
        .I5(seg_IBUF[4]),
        .O(\pixel_OBUF[3]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h000022F2)) 
    \pixel_OBUF[3]_inst_i_7 
       (.I0(seg_IBUF[1]),
        .I1(\pixel_OBUF[3]_inst_i_17_n_0 ),
        .I2(seg_IBUF[2]),
        .I3(\pixel_OBUF[3]_inst_i_18_n_0 ),
        .I4(\pixel_OBUF[3]_inst_i_19_n_0 ),
        .O(\pixel_OBUF[3]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888880)) 
    \pixel_OBUF[3]_inst_i_8 
       (.I0(v_counter_reg[5]),
        .I1(v_counter_reg[4]),
        .I2(v_counter_reg[2]),
        .I3(v_counter_reg[1]),
        .I4(v_counter_reg[0]),
        .I5(v_counter_reg[3]),
        .O(\pixel_OBUF[3]_inst_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h0000001F)) 
    \pixel_OBUF[3]_inst_i_9 
       (.I0(h_counter_reg[2]),
        .I1(h_counter_reg[3]),
        .I2(h_counter_reg[4]),
        .I3(h_counter_reg[7]),
        .I4(h_counter_reg[5]),
        .O(\pixel_OBUF[3]_inst_i_9_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \v_counter[0]_i_1 
       (.I0(v_counter_reg[0]),
        .I1(\v_counter[9]_i_4_n_0 ),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \v_counter[1]_i_1 
       (.I0(v_counter_reg[1]),
        .I1(v_counter_reg[0]),
        .I2(\v_counter[9]_i_4_n_0 ),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \v_counter[2]_i_1 
       (.I0(\v_counter[9]_i_4_n_0 ),
        .I1(v_counter_reg[0]),
        .I2(v_counter_reg[1]),
        .I3(v_counter_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \v_counter[3]_i_1 
       (.I0(v_counter_reg[2]),
        .I1(v_counter_reg[1]),
        .I2(v_counter_reg[0]),
        .I3(v_counter_reg[3]),
        .I4(\v_counter[9]_i_4_n_0 ),
        .O(p_0_in__0[3]));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \v_counter[4]_i_1 
       (.I0(v_counter_reg[0]),
        .I1(v_counter_reg[1]),
        .I2(v_counter_reg[2]),
        .I3(v_counter_reg[3]),
        .I4(v_counter_reg[4]),
        .I5(\v_counter[9]_i_4_n_0 ),
        .O(p_0_in__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \v_counter[5]_i_1 
       (.I0(\v_counter[7]_i_3_n_0 ),
        .I1(v_counter_reg[4]),
        .I2(v_counter_reg[3]),
        .I3(v_counter_reg[5]),
        .I4(\v_counter[9]_i_4_n_0 ),
        .O(p_0_in__0[5]));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \v_counter[6]_i_1 
       (.I0(\v_counter[7]_i_3_n_0 ),
        .I1(v_counter_reg[3]),
        .I2(v_counter_reg[4]),
        .I3(v_counter_reg[5]),
        .I4(v_counter_reg[6]),
        .I5(\v_counter[9]_i_4_n_0 ),
        .O(p_0_in__0[6]));
  LUT6 #(
    .INIT(64'h5155555504000000)) 
    \v_counter[7]_i_1 
       (.I0(\v_counter[9]_i_4_n_0 ),
        .I1(v_counter_reg[5]),
        .I2(\v_counter[7]_i_2_n_0 ),
        .I3(\v_counter[7]_i_3_n_0 ),
        .I4(v_counter_reg[6]),
        .I5(v_counter_reg[7]),
        .O(\v_counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \v_counter[7]_i_2 
       (.I0(v_counter_reg[3]),
        .I1(v_counter_reg[4]),
        .O(\v_counter[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \v_counter[7]_i_3 
       (.I0(v_counter_reg[2]),
        .I1(v_counter_reg[1]),
        .I2(v_counter_reg[0]),
        .O(\v_counter[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h55150040)) 
    \v_counter[8]_i_1 
       (.I0(\v_counter[9]_i_4_n_0 ),
        .I1(v_counter_reg[7]),
        .I2(v_counter_reg[6]),
        .I3(\v_counter[9]_i_3_n_0 ),
        .I4(v_counter_reg[8]),
        .O(\v_counter[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \v_counter[9]_i_1 
       (.I0(ce_IBUF),
        .I1(\h_counter[9]_i_3_n_0 ),
        .O(v_counter));
  LUT6 #(
    .INIT(64'h00000000BFFF4000)) 
    \v_counter[9]_i_2 
       (.I0(\v_counter[9]_i_3_n_0 ),
        .I1(v_counter_reg[6]),
        .I2(v_counter_reg[7]),
        .I3(v_counter_reg[8]),
        .I4(v_counter_reg[9]),
        .I5(\v_counter[9]_i_4_n_0 ),
        .O(p_0_in__0[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \v_counter[9]_i_3 
       (.I0(v_counter_reg[0]),
        .I1(v_counter_reg[1]),
        .I2(v_counter_reg[2]),
        .I3(v_counter_reg[3]),
        .I4(v_counter_reg[4]),
        .I5(v_counter_reg[5]),
        .O(\v_counter[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \v_counter[9]_i_4 
       (.I0(v_counter_reg[9]),
        .I1(v_counter_reg[8]),
        .I2(v_sync_OBUF_inst_i_3_n_0),
        .I3(v_counter_reg[4]),
        .I4(v_counter_reg[5]),
        .I5(v_counter_reg[3]),
        .O(\v_counter[9]_i_4_n_0 ));
  FDCE \v_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(v_counter),
        .CLR(rst_IBUF),
        .D(p_0_in__0[0]),
        .Q(v_counter_reg[0]));
  FDCE \v_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(v_counter),
        .CLR(rst_IBUF),
        .D(p_0_in__0[1]),
        .Q(v_counter_reg[1]));
  FDCE \v_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(v_counter),
        .CLR(rst_IBUF),
        .D(p_0_in__0[2]),
        .Q(v_counter_reg[2]));
  FDCE \v_counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(v_counter),
        .CLR(rst_IBUF),
        .D(p_0_in__0[3]),
        .Q(v_counter_reg[3]));
  FDCE \v_counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(v_counter),
        .CLR(rst_IBUF),
        .D(p_0_in__0[4]),
        .Q(v_counter_reg[4]));
  FDCE \v_counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(v_counter),
        .CLR(rst_IBUF),
        .D(p_0_in__0[5]),
        .Q(v_counter_reg[5]));
  FDCE \v_counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(v_counter),
        .CLR(rst_IBUF),
        .D(p_0_in__0[6]),
        .Q(v_counter_reg[6]));
  FDCE \v_counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(v_counter),
        .CLR(rst_IBUF),
        .D(\v_counter[7]_i_1_n_0 ),
        .Q(v_counter_reg[7]));
  FDCE \v_counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(v_counter),
        .CLR(rst_IBUF),
        .D(\v_counter[8]_i_1_n_0 ),
        .Q(v_counter_reg[8]));
  FDCE \v_counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(v_counter),
        .CLR(rst_IBUF),
        .D(p_0_in__0[9]),
        .Q(v_counter_reg[9]));
  OBUF v_sync_OBUF_inst
       (.I(v_sync_OBUF),
        .O(v_sync));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    v_sync_OBUF_inst_i_1
       (.I0(v_sync_OBUF_inst_i_2_n_0),
        .I1(v_sync_OBUF_inst_i_3_n_0),
        .I2(v_counter_reg[2]),
        .I3(v_counter_reg[1]),
        .I4(v_counter_reg[8]),
        .I5(v_counter_reg[9]),
        .O(v_sync_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    v_sync_OBUF_inst_i_2
       (.I0(v_counter_reg[3]),
        .I1(v_counter_reg[5]),
        .I2(v_counter_reg[4]),
        .O(v_sync_OBUF_inst_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    v_sync_OBUF_inst_i_3
       (.I0(v_counter_reg[6]),
        .I1(v_counter_reg[7]),
        .O(v_sync_OBUF_inst_i_3_n_0));
endmodule
