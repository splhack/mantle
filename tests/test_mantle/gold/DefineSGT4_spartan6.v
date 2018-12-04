module Sub4_cin1 (input [3:0] I0, input [3:0] I1, output [3:0] O);
wire  LUT6_2_inst0_O5;
wire  LUT6_2_inst0_O6;
wire  MUXCY_inst0_O;
wire  XORCY_inst0_O;
wire  LUT6_2_inst1_O5;
wire  LUT6_2_inst1_O6;
wire  MUXCY_inst1_O;
wire  XORCY_inst1_O;
wire  LUT6_2_inst2_O5;
wire  LUT6_2_inst2_O6;
wire  MUXCY_inst2_O;
wire  XORCY_inst2_O;
wire  LUT6_2_inst3_O5;
wire  LUT6_2_inst3_O6;
wire  MUXCY_inst3_O;
wire  XORCY_inst3_O;
LUT6_2 #(.INIT(64'h99999999AAAAAAAA)) LUT6_2_inst0 (.I0(I0[0]), .I1(I1[0]), .I2(1'b0), .I3(1'b0), .I4(1'b0), .I5(1'b1), .O5(LUT6_2_inst0_O5), .O6(LUT6_2_inst0_O6));
MUXCY MUXCY_inst0 (.DI(LUT6_2_inst0_O5), .CI(1'b1), .S(LUT6_2_inst0_O6), .O(MUXCY_inst0_O));
XORCY XORCY_inst0 (.LI(LUT6_2_inst0_O6), .CI(1'b1), .O(XORCY_inst0_O));
LUT6_2 #(.INIT(64'h99999999AAAAAAAA)) LUT6_2_inst1 (.I0(I0[1]), .I1(I1[1]), .I2(1'b0), .I3(1'b0), .I4(1'b0), .I5(1'b1), .O5(LUT6_2_inst1_O5), .O6(LUT6_2_inst1_O6));
MUXCY MUXCY_inst1 (.DI(LUT6_2_inst1_O5), .CI(MUXCY_inst0_O), .S(LUT6_2_inst1_O6), .O(MUXCY_inst1_O));
XORCY XORCY_inst1 (.LI(LUT6_2_inst1_O6), .CI(MUXCY_inst0_O), .O(XORCY_inst1_O));
LUT6_2 #(.INIT(64'h99999999AAAAAAAA)) LUT6_2_inst2 (.I0(I0[2]), .I1(I1[2]), .I2(1'b0), .I3(1'b0), .I4(1'b0), .I5(1'b1), .O5(LUT6_2_inst2_O5), .O6(LUT6_2_inst2_O6));
MUXCY MUXCY_inst2 (.DI(LUT6_2_inst2_O5), .CI(MUXCY_inst1_O), .S(LUT6_2_inst2_O6), .O(MUXCY_inst2_O));
XORCY XORCY_inst2 (.LI(LUT6_2_inst2_O6), .CI(MUXCY_inst1_O), .O(XORCY_inst2_O));
LUT6_2 #(.INIT(64'h99999999AAAAAAAA)) LUT6_2_inst3 (.I0(I0[3]), .I1(I1[3]), .I2(1'b0), .I3(1'b0), .I4(1'b0), .I5(1'b1), .O5(LUT6_2_inst3_O5), .O6(LUT6_2_inst3_O6));
MUXCY MUXCY_inst3 (.DI(LUT6_2_inst3_O5), .CI(MUXCY_inst2_O), .S(LUT6_2_inst3_O6), .O(MUXCY_inst3_O));
XORCY XORCY_inst3 (.LI(LUT6_2_inst3_O6), .CI(MUXCY_inst2_O), .O(XORCY_inst3_O));
assign O = {XORCY_inst3_O,XORCY_inst2_O,XORCY_inst1_O,XORCY_inst0_O};
endmodule

module SGT4 (input signed [3:0] I0, input signed [3:0] I1, output  O);
wire [3:0] Sub4_cin1_inst0_O;
wire  LUT3_inst0_O;
Sub4_cin1 Sub4_cin1_inst0 (.I0(I1), .I1(I0), .O(Sub4_cin1_inst0_O));
LUT3 #(.INIT(8'h8E)) LUT3_inst0 (.I0(Sub4_cin1_inst0_O[3]), .I1(I1[3]), .I2(I0[3]), .O(LUT3_inst0_O));
assign O = LUT3_inst0_O;
endmodule

