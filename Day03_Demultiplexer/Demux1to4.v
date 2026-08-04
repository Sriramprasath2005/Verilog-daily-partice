module  demux4to1( input D, s0,s1 ,
               output reg y0,y1,y2,y3);
  
  assign y0= D& ~s1&~s0;
  assign y1= D& ~s1&s0;
  assign y2= D& s1&~s0;
  assign y3= D& s1&s0;
  

endmodule
