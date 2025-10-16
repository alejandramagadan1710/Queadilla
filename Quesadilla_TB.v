`timescale 1ns/1ns
module quesadilla_tb;

    reg clk_q;
    wire [31:0] instQ;

    // Instanciamos la quesadilla
    quesadilla uut (
        .clk_q(clk_q),
        .instQ(instQ)
    );

    // Generador de reloj
    initial begin
        clk_q = 0;
        forever #5 clk_q = ~clk_q; // Periodo de 10ns
    end

    // Simulación
    initial begin
        $dumpfile("quesadilla_tb.vcd");
        $dumpvars(0, quesadilla_tb);
        #100 $finish;
    end

endmodule
