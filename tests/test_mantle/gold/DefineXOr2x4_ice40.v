module XOr2 (input [1:0] I, output  O);
wire  SB_LUT4_inst0_O;
SB_LUT4 #(.LUT_INIT(16'h6666)) SB_LUT4_inst0 (.I0(I[0]), .I1(I[1]), .I2(1'b0), .I3(1'b0), .O(SB_LUT4_inst0_O));
assign O = SB_LUT4_inst0_O;
endmodule

module XOr2x4 (input [3:0] I0, input [3:0] I1, output [3:0] O);
wire  XOr2_inst0_O;
wire  XOr2_inst1_O;
wire  XOr2_inst2_O;
wire  XOr2_inst3_O;
XOr2 XOr2_inst0 (.I({I1[0],I0[0]}), .O(XOr2_inst0_O));
XOr2 XOr2_inst1 (.I({I1[1],I0[1]}), .O(XOr2_inst1_O));
XOr2 XOr2_inst2 (.I({I1[2],I0[2]}), .O(XOr2_inst2_O));
XOr2 XOr2_inst3 (.I({I1[3],I0[3]}), .O(XOr2_inst3_O));
assign O = {XOr2_inst3_O,XOr2_inst2_O,XOr2_inst1_O,XOr2_inst0_O};
endmodule

