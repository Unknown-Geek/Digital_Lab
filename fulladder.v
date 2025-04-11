module fulladder (X ,Y ,Z ,S , C ) ;
    output S , C ;
    input X ,Y , Z ;
    assign S = X ^ Y ^ Z ;
    assign C =( X & Y ) |(( X ^ Y ) & Z ) ;
endmodule

module fulladder_tb ;
    reg X ,Y , Z ;
    wire S , C ;
    fulladder gate (X ,Y ,Z ,S , C ) ;
    initial begin
        $dumpfile ("fulladder.vcd") ;
        $dumpvars (0 , fulladder_tb ) ;
        $display ( " X Y Z S C " ) ;
        $monitor (X , " " ,Y , " " ,Z , " " ,S , " " ,C ) ;
        X = 0; Y = 0; Z = 0;#1 
        X = 0; Y = 0; Z = 1;#1 
        X = 0; Y = 1; Z = 0;#1 
        X = 0; Y = 1; Z = 1;#1 
        X = 1; Y = 0; Z = 0;#1 
        X = 1; Y = 0; Z = 1;#1 
        X = 1; Y = 1; Z = 0;#1 
        X = 1; Y = 1; Z = 1;#1;
end
endmodule