//-----------------------------------------------------------------------------
//
// Title       : VGA7segDisplay
// Design      : VGA7segDisplay
// Author      : £ukasz Ziêba
// Company     : AGH
//
//-----------------------------------------------------------------------------
//
// File        : C:\My_Designs\psc_project_zieba\VGA7segDisplay\src\VGA7segDisplay.v
// Generated   : Wed Jan 29 11:14:20 2025
// From        : interface description file
// By          : Itf2Vhdl ver. 1.22
//
//-----------------------------------------------------------------------------
//
// Description : Program tworzy sygna³y h_sync, v_sync i pixel dla VGA,
//				 w oparciu o 7-bitow¹ danê seg odpowiadaj¹c¹ kolejnym segmentom
//				 wyœwietlacza segmentowego
//
//-----------------------------------------------------------------------------
`timescale 1 ns / 1 ps

module VGA7segDisplay ( clk, ce ,rst ,seg ,h_sync ,v_sync ,pixel );

input clk ;
wire clk ;
input ce ;
wire ce ;
input rst ;
wire rst ;
input [6:0] seg ;
wire [6:0] seg ;
output h_sync ;
wire h_sync ;
output v_sync ;
wire v_sync ;
output [3:0] pixel ;
wire [3:0] pixel ;

// parametry dla VGA 640x800@60Hz
parameter H_DISPLAY_TIME = 640;
parameter H_PULSE_WIDTH = 96;
parameter H_FRONT_PORCH = 16;
parameter H_BACK_PORCH = 48;
parameter H_SYNC_PULSE = H_DISPLAY_TIME + H_PULSE_WIDTH + H_FRONT_PORCH + H_BACK_PORCH;

parameter V_DISPLAY_TIME = 480;
parameter V_PULSE_WIDTH = 2;
parameter V_FRONT_PORCH = 10;
parameter V_BACK_PORCH = 29;
parameter V_SYNC_PULSE = V_DISPLAY_TIME + V_PULSE_WIDTH + V_FRONT_PORCH + V_BACK_PORCH;

//parametry wyœwietlanych segmentów
parameter HW = 10; 						// pó³-szerokoœæ segmentu
parameter HL = 50; 						// 
//œrodek wyœwietlanego zakresu
parameter H_POS = 320;
parameter V_POS = 240;

parameter H_START =  H_PULSE_WIDTH + H_BACK_PORCH + H_POS;	//horyzontalna pozycja pocz¹tkowa
parameter V_START =  V_PULSE_WIDTH + V_BACK_PORCH + V_POS;	// wertykalna pozycja pocz¹tkowa

//licznik horyzontalny i wertykalny
reg	[9:0] h_counter;					
reg	[9:0] v_counter;

// zdefiniowane zakresy segmentów, w odniesieniu do œrodka wyœwietlanego zakresu
wire [6:0] seg_region;
//A
assign seg_region[0] =	((h_counter >= H_START - HL)	&&	(h_counter < H_START + HL)) &&
						((v_counter >= V_START - HW - 2*HL)	&&	(v_counter < V_START + HW -2*HL));
//B				
assign seg_region[1] =	((h_counter >= H_START - HW + HL)	&&	(h_counter < H_START + HW + HL)) &&
						((v_counter >= V_START - HL - HL)	&&	(v_counter < V_START + HL - HL));
//C
assign seg_region[2] =	((h_counter >= H_START - HW + HL)	&&	(h_counter < H_START + HW + HL)) &&
						((v_counter >= V_START - HL + HL)	&&	(v_counter < V_START + HL + HL));
//D
assign seg_region[3] =	((h_counter >= H_START - HL)	&&	(h_counter < H_START + HL)) &&
						((v_counter >= V_START - HW + 2*HL)	&&	(v_counter < V_START + HW + 2*HL));
//E
assign seg_region[4] =	((h_counter >= H_START - HW - HL)	&&	(h_counter < H_START + HW - HL)) &&
						((v_counter >= V_START - HL + HL)	&&	(v_counter < V_START + HL + HL));
//F
assign seg_region[5] =	((h_counter >= H_START - HW - HL)	&&	(h_counter < H_START + HW - HL)) &&
						((v_counter >= V_START - HL - HL)	&&	(v_counter < V_START + HL - HL));
//G
assign seg_region[6] =	((h_counter >= H_START - HL)	&&	(h_counter < H_START + HL)) &&
						((v_counter >= V_START - HW)	&&	(v_counter < V_START + HW));

//warunek wyœwietlania -> segment aktywny i w licznik w odpowiednim zakresie
wire [6:0] seg_active = seg & seg_region;

//realizacja licznika horyzontalnego i wertykalnego
always @(posedge clk or posedge rst)
	if (rst)
		begin
			h_counter <= 0;
			v_counter <= 0;
		end
	else if(ce)
		begin
			if (h_counter < H_SYNC_PULSE)
				h_counter <= h_counter + 1;
			else
				begin
					h_counter <= 0;
					if (v_counter < V_SYNC_PULSE)
						v_counter <= v_counter + 1;
					else
						v_counter <= 0;
				end
		end		
		
assign h_sync = ~(h_counter >= 0 && h_counter < (H_PULSE_WIDTH));
assign v_sync = ~(v_counter >= 0 && v_counter < (V_PULSE_WIDTH));
assign pixel = (seg_active === 7'b0000000) ? 4'b0000 : 4'b1111;

endmodule
