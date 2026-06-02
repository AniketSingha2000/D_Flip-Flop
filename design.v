// Enter RTL Code
module d_ff (
    input d,
    input clk,
    output reg q,
    output qb
);

always @(posedge clk)
begin
    q <= d;
end

assign qb = ~q;

endmodule