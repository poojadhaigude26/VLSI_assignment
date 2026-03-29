module gray_to_binary (
    input [7:0] G,
    output [7:0] B
);

assign B[7] = G[7];
assign B[6] = B[7] ^ G[6];
assign B[5] = B[6] ^ G[5];
assign B[4] = B[5] ^ G[4];
assign B[3] = B[4] ^ G[3];
assign B[2] = B[3] ^ G[2];
assign B[1] = B[2] ^ G[1];
assign B[0] = B[1] ^ G[0];

endmodule