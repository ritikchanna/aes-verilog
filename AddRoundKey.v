`timescale 1ns / 1ps
`define PACK_ARRAY(PK_WIDTH,PK_LEN,PK_SRC,PK_DEST)    genvar pk_idx; generate for (pk_idx=0; pk_idx<(PK_LEN); pk_idx=pk_idx+1) begin; assign PK_DEST[((PK_WIDTH)*pk_idx+((PK_WIDTH)-1)):((PK_WIDTH)*pk_idx)] = PK_SRC[pk_idx][((PK_WIDTH)-1):0]; end; endgenerate
`define UNPACK_ARRAY(PK_WIDTH,PK_LEN,PK_DEST,PK_SRC)  genvar unpk_idx; generate for (unpk_idx=0; unpk_idx<(PK_LEN); unpk_idx=unpk_idx+1) begin; assign PK_DEST[unpk_idx][((PK_WIDTH)-1):0] = PK_SRC[((PK_WIDTH)*unpk_idx+(PK_WIDTH-1)):((PK_WIDTH)*unpk_idx)]; end; endgenerate
module AddRoundKey(input [128:0] packed_state,
						input [128:0] packed_key,
						output [128:0] packed_out
);
wire [7:0] state [0:15];
wire [7:0] key [0:15];
wire [7:0] out [0:15];
integer i;
initial
begin
`UNPACK_ARRAY(4,16,state,packed_state)
`UNPACK_ARRAY(4,16,key,packed_key)
`PACK_ARRAY(8,16,out,packed_out)
for(i=0;i<16;i=i+1)
assign out[i] = key[i] ^ state[i];
end
endmodule
