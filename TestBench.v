	`timescale 1ns / 1ps
	module TestBench(input one_bit);
	
	reg [127:0] TestState;
	reg [127:0] TestKey;
	wire [127:0] TestResult;
	Encrypt e_module(TestState,TestKey,TestResult);
	initial
	begin
	TestState=127'h5587304b0f70f236973119c44f0bae3f;
	TestKey=128'h2dbeaa39859dcf76681ed7d5a1434aad;
	//assign led = TestState[127];
	end
	endmodule