module comparator (a ,b , eq , lt , gt ) ;
  input [3:0] a , b ;
  output reg eq , lt , gt ;
  always @ (a , b )
  begin
    if ( a == b )
    begin
      eq = 1;
      lt = 0;
      gt = 0;
    end
    else if (a > b )
    begin
      eq = 0;
      lt = 0;
      gt = 1;
    end
    else
    begin
      eq = 0;
      lt = 1;
      gt = 0;
    end
  end
endmodule

module comparator_tst ;
  reg [3:0] a , b ;
  wire eq , lt , gt ;
  comparator DUT (a ,b , eq , lt , gt ) ;
  initial begin
    $dumpfile ("comparator.vcd") ; 
    $dumpvars (1) ;
    a = 12; b = 12; #1; 
    a = 8; b = 4; #1; 
    a = 13; b = 15; #1; 
    a = 0; b = 2; #1;
  end
endmodule