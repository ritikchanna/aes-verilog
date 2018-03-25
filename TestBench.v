	`timescale 1ns / 1ps
	module TestBench(	input wire [7:0] KeyArray,
							output reg led,
							output reg [9:0] lcd
					);
	
	reg [127:0] TestState;
	reg [127:0] TestKey;
	wire [127:0] TestResult;
	reg next = 1'b0;
	reg reset;
	wire ready;
	//TODO connect using name and connect other parameters too !!
	Encrypt e_module(TestState,TestKey,next,ready,TestResult);
	initial
	begin
	TestState=128'D1;
	TestKey=128'D8;
	end
	always @(ready)
	begin
	$display("Ready changed");
	if(ready == 1)
	begin
	$display("Next before %b",next);
	next = next ^ 1'b1;
	$display("Next after %b",next);
	end
	end
	endmodule

