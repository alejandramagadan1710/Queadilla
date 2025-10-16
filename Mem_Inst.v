`timescale 1ns/1ns

module Rom(
    input [31:0] entrada,           
	output reg [31:0] DatoS,
	input clk
);

reg [7:0] Rom [0:63]; 

    initial begin
        $readmemb ("instrucciones.txt", Rom);
    end

always @(posedge clk)
begin
DatoS <= {Rom[entrada+3], Rom[entrada+2], Rom[entrada+1], Rom[entrada]};
end



endmodule
