module NOT(output Y,input A);
     not(Y,A);
endmodule

module not_gate;
     reg A;
     wire Y;

     NOT instance0(Y, A);

     initial begin
        $dumpfile("notgate.vcd");
        $dumpvars(1);
        $display("Not gate realisation \nA Y");
        $monitor(A," ",Y);

        A=0;#1;
        A=1;#1;
     end
endmodule