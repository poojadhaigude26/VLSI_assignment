module demux_1to4 (
    input I,        
    input S0, S1,   
    output Y0, Y1, Y2, Y3  
);

wire t1,t2;
not (t1, S0);
not (t2, S1);

and (Y0,I, t1,t2);
and (Y1, I, t2, S0);
and (Y2, I, S1, t1);
and (Y3, I, S1, S0);

endmodule

