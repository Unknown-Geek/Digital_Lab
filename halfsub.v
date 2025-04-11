module halfsub (a , b , s , c ) ;
 input a , b ;
 output s , c ;
 assign s = a ^ b ;
 assign c = ~a & b ;
endmodule

module halfsub_tb ;
  wire s , c ;
  reg a , b ;
  halfsub gate (a , b , s , c ) ;
  initial begin
    $dumpfile ( "halfsub.vcd" ) ;
    $dumpvars (1) ;
    $display ( " a b s c " ) ;
    $monitor (a , " " ,b , " " ,s , " " ,c ) ;
    a = 0; b = 0;#1 
    a = 0; b = 1;#1 
    a = 1; b = 0;#1 
    a = 1; b = 1;#1;
  end
endmodule