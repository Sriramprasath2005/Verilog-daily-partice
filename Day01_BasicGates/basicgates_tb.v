`timescale 1ns/1ps
module tb_basic_gates;
reg A, B;
wire AND_OUT, OR_OUT, NOT_OUT, NAND_OUT, NOR_OUT, XOR_OUT, XNOR_OUT;

basic_gates uut(
    .A(A),
    .B(B),
    .AND_OUT(AND_OUT),
    .OR_OUT(OR_OUT),
    .NOT_OUT(NOT_OUT),
    .NAND_OUT(NAND_OUT),
    .NOR_OUT(NOR_OUT),
    .XOR_OUT(XOR_OUT),
    .XNOR_OUT(XNOR_OUT)
);

initial begin
    // Generate waveform file
    $dumpfile("basic_gates.vcd");
    $dumpvars(0, tb_basic_gates);

    // Single display header
    $display("Time\tA B | AND OR NOT NAND NOR XOR XNOR");
    $monitor("%0t\t%b %b |  %b   %b   %b    %b    %b   %b    %b",
             $time, A, B, AND_OUT, OR_OUT, NOT_OUT,
             NAND_OUT, NOR_OUT, XOR_OUT, XNOR_OUT);

    // Test cases
    A=0; B=0; #10;
    A=0; B=1; #10;
    A=1; B=0; #10;
    A=1; B=1; #10;
    $finish;
end
endmodule
