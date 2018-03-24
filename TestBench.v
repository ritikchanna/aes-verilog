	`timescale 1ns / 1ps
	module TestBench;
	reg [127:0] TestState;
	reg [127:0] TestKey;
	wire [127:0] TestResult;
	reg next = 1'b1;
	reg reset;
	wire ready;
	//TODO connect using name and connect other parameters too !!
	Encrypt e_module(TestState,TestKey,next,ready,TestResult);
	initial
	begin
	TestState=128'D1;
	TestKey=128'D8;
	end
	endmodule
