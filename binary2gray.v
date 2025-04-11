module bin2gray( input [3:0] bin , output [3:0] G ) ;
    assign G [3] = bin [3];
    assign G [2] = bin [3] ^ bin [2];
    assign G [1] = bin [2] ^ bin [1];
    assign G [0] = bin [1] ^ bin [0];
endmodule

module tb ;
    reg [3:0] bin ;
    wire [3:0] G ;
    bin2gray gate1 ( bin , G ) ;
    integer i ;
    initial begin
        $dumpfile ("binary2gray.vcd") ;
        $dumpvars (0 , tb ) ;
        for ( i = 0; i < 16; i = i + 1) begin
            bin = i ;
            #1;
            $display ("bin = %b, gray = %b", bin, G );
        end
        bin <= 0; #1;
        bin <= 1; #1;
        bin <= 2; #1;
        bin <= 3; #1;
        bin <= 4; #1;
        bin <= 5; #1;
        bin <= 6; #1;
        bin <= 7; #1;
        bin <= 8; #1;
        bin <= 9; #1;
        bin <= 10; #1;
        bin <= 11; #1;
        bin <= 12; #1;
        bin <= 13; #1;
        bin <= 14; #1;
        bin <= 15; #1;
    end
endmodule