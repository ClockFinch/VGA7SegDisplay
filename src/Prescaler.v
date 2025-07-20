//-----------------------------------------------------------------------------
//
// Title       : Prescaler
// Design      : TutorVerilog_final
// Author      : PJR
// Company     : AGH
//
//-----------------------------------------------------------------------------
//
// File        : D:\My_Office\AGH\Dydaktyka\PSC\AHDL\Verilog\TutorVerilog\TutorVerilog_final\src\Prescaler.v
// Generated   : Sun Dec  1 16:56:08 2024
// From        : interface description file
// By          : Itf2Vhdl ver. 1.22
//
//-----------------------------------------------------------------------------
//
// Description : EDIT: Prescaler zosta³ ustawiony na dzielenie czêstotliwoœci CLK
//					   z 100MHz do 25MHz
//
//-----------------------------------------------------------------------------
`timescale 1 ns / 1 ps


module Prescaler (clk, ce, rst, ceo);
	
wire clk;
input clk;
wire ce;
input ce;
wire rst;
input rst;
wire ceo;
output ceo;
	

reg [3:0] Divider;           					// internal divider register 
integer DIVIDE_FACTOR = 4;         	 	// divide factor user constant
												     						// remember to adjust lenght of Divider register when DIVIDE_FACTOR is being changed

	always @(posedge clk, posedge rst)
		if (rst)
			Divider <= 0;
		else
			if (ce)
				if (Divider == DIVIDE_FACTOR-1)
					Divider <= 0;
				else
					Divider <= Divider + 1;

assign ceo = ((Divider == (DIVIDE_FACTOR-1)) & ce) ? 1 : 0; // full parethesis

//assign CEO = Divider == DIVIDE_FACTOR-1 & CE ? 1 : 0; // no parethesis at all - natural operator precedence

	
endmodule