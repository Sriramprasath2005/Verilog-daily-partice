module mux4to1(input I0,I1,I2,I3,I4, I5, I6, I7,input [3:0]S, output reg y);
  
 
  always @(*) begin
    case (S)
      2'b000: y = I0;
      2'b001: y = I1;
      2'b010: y = I2;
      2'b011: y = I3;
      2'b100: y = I4;
      2'b101: y = I5;
      2'b110: y = I6;
      2'b111: y = I7;
    endcase
  end
endmodule
