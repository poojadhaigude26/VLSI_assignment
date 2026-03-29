module mux_2to1_tristate (
    input I0, I1,   
    input S,        
    output Y        
);

bufif0 (Y, I0, S); 
bufif1 (Y, I1, S); 

endmodule
