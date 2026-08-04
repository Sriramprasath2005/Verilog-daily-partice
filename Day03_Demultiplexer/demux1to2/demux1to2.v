module mux2to1( input D, input sel ,output reg y0,y1);
  
  assign y0= D&~sel ;
  assign y1= D& sel ;

endmodule
