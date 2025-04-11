module AND(output Y,input A,B);
     and(Y,A,B);
endmodule

module and_gate;
     reg A,B;
     wire Y;

     AND instance0(Y,A,B);

     initial begin
        $dumpfile("andgate.vcd");
        $dumpvars(1);
        $display("And gate realisation \nA B Y");
        $monitor(A," ",B," ",Y);

        A=0;B=0;#1;
        A=0;B=1;#1;
        A=1;B=0;#1;
        A=1;B=1;#1;
     end
endmodule