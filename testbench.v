// Enter testbench code
module d_ff_tb;
reg d, clk;
wire q, qb;

d_ff dut(.d(d), .clk(clk), .q(q), .qb(qb));

initial begin
    clk = 0;
    forever #10 clk = ~clk;
end

initial begin
    d = 0;
    #10; d = 1;
    #10; d = 0;
    #10; d = 1;
    #10; $finish;
end

initial begin
    $dumpfile("waveform.vcd");
    $dumpvars(0, d_ff_tb);
end

endmodule