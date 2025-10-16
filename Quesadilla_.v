`timescale 1ns/1ns

module quesadilla (
input clk_q,
output reg[31:0] instQ
);

wire [31:0] c1, c2, c3;


PC inst1(
	.clk(clk_q),
    .DirSig(c2),
    .Dir(c1)
);

ADD inst2(
	.op1(c1),
    .Resultado(c2)
);

Rom inst3(
	.entrada(c1),
    .DatoS(c3),
    .clk(clk_q)
);

assign instQ = c3;

endmodule

