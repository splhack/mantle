module Add2_cout_cin (input [1:0] I0, input [1:0] I1, output [1:0] O, output COUT, input CIN);
wire [2:0] coreir_add3_inst0_out;
assign coreir_add3_inst0_out = (({1'b0,1'b0,CIN}) + ({1'b0,I0[1],I0[0]})) + ({1'b0,I1[1],I1[0]});
assign O = {coreir_add3_inst0_out[1],coreir_add3_inst0_out[0]};
assign COUT = coreir_add3_inst0_out[2];
endmodule

module Sub2_cout_cin (input [1:0] I0, input [1:0] I1, output [1:0] O, output COUT, input CIN);
Add2_cout_cin Add2_cout_cin_inst0(.I0(I0), .I1(~ I1), .O(O), .COUT(COUT), .CIN(~ CIN));
endmodule

