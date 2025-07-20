//-----------------------------------------------------------------------------
//
// Title       : VGA7segDisplay_tb
// Design      : VGA7segDisplay
// Author      : admin
// Company     : agh
//
//-----------------------------------------------------------------------------
//
// File        : VGA7segDisplay_TB.v
// Generated   : Wed Jan 29 12:12:01 2025
// From        : c:\My_Designs\VGA7segDisplay\src\TestBench\VGA7segDisplay_TB_settings.txt
// By          : tb_verilog.pl ver. ver 1.2s
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 1ps / 1ps
module VGA7segDisplay_tb;
	
	//Parameters declaration: 
	defparam UUT.H_DISPLAY_TIME = 640;
	parameter H_DISPLAY_TIME = 640;
	defparam UUT.H_PULSE_WIDTH = 96;
	parameter H_PULSE_WIDTH = 96;
	defparam UUT.H_FRONT_PORCH = 16;
	parameter H_FRONT_PORCH = 16;
	defparam UUT.H_BACK_PORCH = 48;
	parameter H_BACK_PORCH = 48;
	defparam UUT.H_SYNC_PULSE = H_DISPLAY_TIME + H_PULSE_WIDTH + H_FRONT_PORCH + H_BACK_PORCH;
	parameter H_SYNC_PULSE = H_DISPLAY_TIME + H_PULSE_WIDTH + H_FRONT_PORCH + H_BACK_PORCH;
	defparam UUT.V_DISPLAY_TIME = 480;
	parameter V_DISPLAY_TIME = 480;
	defparam UUT.V_PULSE_WIDTH = 2;
	parameter V_PULSE_WIDTH = 2;
	defparam UUT.V_FRONT_PORCH = 10;
	parameter V_FRONT_PORCH = 10;
	defparam UUT.V_BACK_PORCH = 29;
	parameter V_BACK_PORCH = 29;
	defparam UUT.V_SYNC_PULSE = V_DISPLAY_TIME + V_PULSE_WIDTH + V_FRONT_PORCH + V_BACK_PORCH;
	parameter V_SYNC_PULSE = V_DISPLAY_TIME + V_PULSE_WIDTH + V_FRONT_PORCH + V_BACK_PORCH;
	
	defparam UUT.HALF_WIDTH = 15;
	parameter HALF_WIDTH = 15;
	defparam UUT.HALF_LENGTH = 60;
	parameter HALF_LENGTH = 60;
	defparam UUT.H_POS = 400; // 640 / 2
	parameter H_POS = 400; // 640 / 2
	defparam UUT.V_POS = 320; // 800 / 4 / 2
	parameter V_POS = 320; // 800 / 4 / 2
	
	//Internal signals declarations:
	reg clk;
	reg rst;
	reg [6:0]seg;
	reg ce;
	wire h_sync;
	wire v_sync;
	wire [3:0] pixel;
	
	wire [6:0] seg_region;
	wire [6:0] seg_active;

	// Unit Under Test port map
	VGA7segDisplay UUT (
		.clk(clk),
		.rst(rst),
		.seg(seg),
		.h_sync(h_sync),
		.v_sync(v_sync),
		.pixel(pixel),
		.ce(ce));
		
	// Verification stimuli
	initial
		begin : CLOCK_STIM
			clk = 1'b0;
			forever #50 clk = ~clk;
		end
		
	initial
		begin : SEG_STIM
			#100
			seg = 7'b1110000;
		end
		
	initial
		begin : CE_STIM
			#100
			ce = 1'b1;
		end
	
	initial
		begin : RST_STIM
			rst = 1'b0;
			#1250
			rst = 1'b1;
			#5000
			rst = 1'b0;
		end
	
endmodule
