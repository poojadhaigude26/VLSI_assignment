module csa_4bit (
    input [3:0] A, B, C,
    output [3:0] Sum,
    output [3:0] Carry
);

assign Sum = A ^ B ^ C;
assign Carry[0] = 0;
assign Carry[1] = (A[0]&B[0]) | (B[0]&C[0]) | (A[0]&C[0]);
assign Carry[2] = (A[1]&B[1]) | (B[1]&C[1]) | (A[1]&C[1]);
assign Carry[3] = (A[2]&B[2]) | (B[2]&C[2]) | (A[2]&C[2]);

endmodule
