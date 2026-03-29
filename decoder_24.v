module decoder_24 (
    input A,B,           
    output Y0, Y1, Y2, Y3  
);

wire t1,t2;
nand (t1, A);
nand (t2, B);

nand (Y0, t1,t2);
nand (Y1,t1, B);
nand (Y2, A, t2);
nand (Y3, A, B);

endmodule