	`timescale 1ns / 1ps
	module TestBench(input one_bit);
	
	reg [127:0] TestState;
	reg [127:0] TestKey;
	wire [127:0] TestResult;
	Decrypt e_module(TestState,TestKey,TestResult);
	initial
	begin
	TestState=127'h12edf70abe44d3596c48a1da8fc224d7;
	TestKey=128'h000102030405060708090a0b0c0d0e0f;
	//assign led = TestState[127];
	end
	endmodule