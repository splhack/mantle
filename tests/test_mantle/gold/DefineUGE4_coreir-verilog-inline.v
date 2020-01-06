module coreir_uge #(parameter width = 1) (input [width-1:0] in0, input [width-1:0] in1, output out);
  assign out = in0 >= in1;
endmodule

module coreir_uge4_wrapped (input [3:0] I0, input [3:0] I1, output O);
coreir_uge #(.width(4)) coreir_uge4_inst0(.in0(I0), .in1(I1), .out(O));
endmodule

