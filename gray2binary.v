module gray2bin ( input [3:0] G , output [3:0] bout ) ;
  assign bout [3] = G [3];
  assign bout [2] = G [3] ^ G [2];
  assign bout [1] = G [3] ^ G [2] ^ G [1];
  assign bout [0] = G [3] ^ G [2] ^ G [1] ^ G [0];
endmodule

module tb ;
  reg [3:0] G ;
  wire [3:0] bout ;
  gray2bin gate1 (G , bout ) ;
  integer i ;

  initial begin
    $dumpfile ("gray2binary.vcd") ;
    $dumpvars (1) ;

    for ( i = 0; i < 16; i = i + 1) begin
      G = i;
      #1;
      $display ( "gray = %b, bin = %b", G, bout ) ;
    end

    G <= 0; #1;
    G <= 1; #1;
    G <= 2; #1;
    G <= 3; #1;
    G <= 4; #1;
    G <= 5; #1;
    G <= 6; #1;
    G <= 7; #1;
    G <= 8; #1;
    G <= 9; #1;
    G <= 10; #1;
    G <= 11; #1;
    G <= 12; #1;
    G <= 13; #1;
    G <= 14; #1;
    G <= 15; #1;
  end
endmodule