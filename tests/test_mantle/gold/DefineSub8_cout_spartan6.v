module Sub8_cout (input [7:0] I0, input [7:0] I1, output [7:0] O, output  COUT);
wire  inst0_O5;
wire  inst0_O6;
wire  inst1_O;
wire  inst2_O;
wire  inst3_O5;
wire  inst3_O6;
wire  inst4_O;
wire  inst5_O;
wire  inst6_O5;
wire  inst6_O6;
wire  inst7_O;
wire  inst8_O;
wire  inst9_O5;
wire  inst9_O6;
wire  inst10_O;
wire  inst11_O;
wire  inst12_O5;
wire  inst12_O6;
wire  inst13_O;
wire  inst14_O;
wire  inst15_O5;
wire  inst15_O6;
wire  inst16_O;
wire  inst17_O;
wire  inst18_O5;
wire  inst18_O6;
wire  inst19_O;
wire  inst20_O;
wire  inst21_O5;
wire  inst21_O6;
wire  inst22_O;
wire  inst23_O;
LUT6_2 #(.INIT(64'h99999999AAAAAAAA)) inst0 (.I0(I0[0]), .I1(I1[0]), .I2(1'b0), .I3(1'b0), .I4(1'b0), .I5(1'b1), .O5(inst0_O5), .O6(inst0_O6));
MUXCY inst1 (.DI(inst0_O5), .CI(1'b0), .S(inst0_O6), .O(inst1_O));
XORCY inst2 (.LI(inst0_O6), .CI(1'b0), .O(inst2_O));
LUT6_2 #(.INIT(64'h99999999AAAAAAAA)) inst3 (.I0(I0[1]), .I1(I1[1]), .I2(1'b0), .I3(1'b0), .I4(1'b0), .I5(1'b1), .O5(inst3_O5), .O6(inst3_O6));
MUXCY inst4 (.DI(inst3_O5), .CI(inst1_O), .S(inst3_O6), .O(inst4_O));
XORCY inst5 (.LI(inst3_O6), .CI(inst1_O), .O(inst5_O));
LUT6_2 #(.INIT(64'h99999999AAAAAAAA)) inst6 (.I0(I0[2]), .I1(I1[2]), .I2(1'b0), .I3(1'b0), .I4(1'b0), .I5(1'b1), .O5(inst6_O5), .O6(inst6_O6));
MUXCY inst7 (.DI(inst6_O5), .CI(inst4_O), .S(inst6_O6), .O(inst7_O));
XORCY inst8 (.LI(inst6_O6), .CI(inst4_O), .O(inst8_O));
LUT6_2 #(.INIT(64'h99999999AAAAAAAA)) inst9 (.I0(I0[3]), .I1(I1[3]), .I2(1'b0), .I3(1'b0), .I4(1'b0), .I5(1'b1), .O5(inst9_O5), .O6(inst9_O6));
MUXCY inst10 (.DI(inst9_O5), .CI(inst7_O), .S(inst9_O6), .O(inst10_O));
XORCY inst11 (.LI(inst9_O6), .CI(inst7_O), .O(inst11_O));
LUT6_2 #(.INIT(64'h99999999AAAAAAAA)) inst12 (.I0(I0[4]), .I1(I1[4]), .I2(1'b0), .I3(1'b0), .I4(1'b0), .I5(1'b1), .O5(inst12_O5), .O6(inst12_O6));
MUXCY inst13 (.DI(inst12_O5), .CI(inst10_O), .S(inst12_O6), .O(inst13_O));
XORCY inst14 (.LI(inst12_O6), .CI(inst10_O), .O(inst14_O));
LUT6_2 #(.INIT(64'h99999999AAAAAAAA)) inst15 (.I0(I0[5]), .I1(I1[5]), .I2(1'b0), .I3(1'b0), .I4(1'b0), .I5(1'b1), .O5(inst15_O5), .O6(inst15_O6));
MUXCY inst16 (.DI(inst15_O5), .CI(inst13_O), .S(inst15_O6), .O(inst16_O));
XORCY inst17 (.LI(inst15_O6), .CI(inst13_O), .O(inst17_O));
LUT6_2 #(.INIT(64'h99999999AAAAAAAA)) inst18 (.I0(I0[6]), .I1(I1[6]), .I2(1'b0), .I3(1'b0), .I4(1'b0), .I5(1'b1), .O5(inst18_O5), .O6(inst18_O6));
MUXCY inst19 (.DI(inst18_O5), .CI(inst16_O), .S(inst18_O6), .O(inst19_O));
XORCY inst20 (.LI(inst18_O6), .CI(inst16_O), .O(inst20_O));
LUT6_2 #(.INIT(64'h99999999AAAAAAAA)) inst21 (.I0(I0[7]), .I1(I1[7]), .I2(1'b0), .I3(1'b0), .I4(1'b0), .I5(1'b1), .O5(inst21_O5), .O6(inst21_O6));
MUXCY inst22 (.DI(inst21_O5), .CI(inst19_O), .S(inst21_O6), .O(inst22_O));
XORCY inst23 (.LI(inst21_O6), .CI(inst19_O), .O(inst23_O));
assign O = {inst23_O,inst20_O,inst17_O,inst14_O,inst11_O,inst8_O,inst5_O,inst2_O};
assign COUT = inst22_O;
endmodule

