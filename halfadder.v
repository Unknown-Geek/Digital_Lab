module halfadder (a , b , s , c ) ;
 input a , b ;
 output s , c ;
 assign s = a ^ b ;
 assign c = a & b ;
endmodule

module halfadder_tb ;
  wire s , c ;
  reg a , b ;
  halfadder gate (a , b , s , c ) ;
  initial begin
    $dumpfile ( "halfadder.vcd" ) ;
    $dumpvars (1) ;
    $display ( " a b s c " ) ;
    $monitor (a , " " ,b , " " ,s , " " ,c ) ;
    a = 0; b = 0;#1 
    a = 0; b = 1;#1 
    a = 1; b = 0;#1 
    a = 1; b = 1;#1;
  end
endmodule