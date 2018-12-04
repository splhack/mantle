module And4 (input [3:0] I, output  O);
wire  SB_LUT4_inst0_O;
SB_LUT4 #(.LUT_INIT(16'h8000)) SB_LUT4_inst0 (.I0(I[0]), .I1(I[1]), .I2(I[2]), .I3(I[3]), .O(SB_LUT4_inst0_O));
assign O = SB_LUT4_inst0_O;
endmodule

module And4x8 (input [7:0] I0, input [7:0] I1, input [7:0] I2, input [7:0] I3, output [7:0] O);
wire  And4_inst0_O;
wire  And4_inst1_O;
wire  And4_inst2_O;
wire  And4_inst3_O;
wire  And4_inst4_O;
wire  And4_inst5_O;
wire  And4_inst6_O;
wire  And4_inst7_O;
And4 And4_inst0 (.I({I3[0],I2[0],I1[0],I0[0]}), .O(And4_inst0_O));
And4 And4_inst1 (.I({I3[1],I2[1],I1[1],I0[1]}), .O(And4_inst1_O));
And4 And4_inst2 (.I({I3[2],I2[2],I1[2],I0[2]}), .O(And4_inst2_O));
And4 And4_inst3 (.I({I3[3],I2[3],I1[3],I0[3]}), .O(And4_inst3_O));
And4 And4_inst4 (.I({I3[4],I2[4],I1[4],I0[4]}), .O(And4_inst4_O));
And4 And4_inst5 (.I({I3[5],I2[5],I1[5],I0[5]}), .O(And4_inst5_O));
And4 And4_inst6 (.I({I3[6],I2[6],I1[6],I0[6]}), .O(And4_inst6_O));
And4 And4_inst7 (.I({I3[7],I2[7],I1[7],I0[7]}), .O(And4_inst7_O));
assign O = {And4_inst7_O,And4_inst6_O,And4_inst5_O,And4_inst4_O,And4_inst3_O,And4_inst2_O,And4_inst1_O,And4_inst0_O};
endmodule

