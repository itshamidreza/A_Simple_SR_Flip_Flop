//-----------------------------------------------------------------------------
//
// Title       : Edge triggered SR flip flop
// Design      : A rising edge SR Flip Flop
// Author      : Hamid Reza Ghahramani
// Company     : -
//
//-----------------------------------------------------------------------------
//
// File        : d:\SR Flip Flop\src\Edge Triggered SR Flip Flop.v
// By          : Hamid.Gh
//
//-----------------------------------------------------------------------------
//
// Description : A simple SR Flip flop with With no additional contril inputs.
//				 clock speed: 50ns
//               R Input period: 70ns 
//			     S Input period: 100ns
//				 Waveform duration: 1000 ns
//-----------------------------------------------------------------------------
`timescale 1 ns / 1 ps

module SR_FF (input clk, S, R, output reg Q);
	always @ (posedge clk, R, S) begin
		if (clk == 1'b1) begin
			if (S) Q <= 1'b1 ;
			else if (R) Q <= 1'b0 ;
			end
		end
endmodule
