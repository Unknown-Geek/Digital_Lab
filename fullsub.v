module fullsub (X ,Y ,Z ,D , B ) ;
    output D , B ;
    input X ,Y , Z ;
    assign D = X ^ Y ^ Z ;
    assign B =( ~X & Y ) |(( X ^ Y ) & Z ) ;
endmodule

module fullsub_tb ;
    reg X ,Y , Z ;
    wire D , B ;
    fullsub gate (X ,Y ,Z ,D , B ) ;
    initial begin
        $dumpfile ("fullsub.vcd") ;
        $dumpvars (0 , fullsub_tb ) ;
        $display ( " X Y Z S C " ) ;
        $monitor (X , " " ,Y , " " ,Z , " " ,D , " " ,B ) ;
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