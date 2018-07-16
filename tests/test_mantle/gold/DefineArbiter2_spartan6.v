module Add2 (input [1:0] I0, input [1:0] I1, output [1:0] O);
wire  inst0_O5;
wire  inst0_O6;
wire  inst1_O;
wire  inst2_O;
wire  inst3_O5;
wire  inst3_O6;
wire  inst4_O;
wire  inst5_O;
LUT6_2 #(.INIT(64'h66666666AAAAAAAA)) inst0 (.I0(I0[0]), .I1(I1[0]), .I2(1'b0), .I3(1'b0), .I4(1'b0), .I5(1'b1), .O5(inst0_O5), .O6(inst0_O6));
MUXCY inst1 (.DI(inst0_O5), .CI(1'b0), .S(inst0_O6), .O(inst1_O));
XORCY inst2 (.LI(inst0_O6), .CI(1'b0), .O(inst2_O));
LUT6_2 #(.INIT(64'h66666666AAAAAAAA)) inst3 (.I0(I0[1]), .I1(I1[1]), .I2(1'b0), .I3(1'b0), .I4(1'b0), .I5(1'b1), .O5(inst3_O5), .O6(inst3_O6));
MUXCY inst4 (.DI(inst3_O5), .CI(inst1_O), .S(inst3_O6), .O(inst4_O));
XORCY inst5 (.LI(inst3_O6), .CI(inst1_O), .O(inst5_O));
assign O = {inst5_O,inst2_O};
endmodule

module Arbiter2 (input [1:0] I, output [1:0] O);
wire [1:0] inst0_O;
wire  inst1_O;
wire  inst2_O;
Add2 inst0 (.I0(I), .I1({1'b1,1'b1}), .O(inst0_O));
LUT2 #(.INIT(4'h2)) inst1 (.I0(I[0]), .I1(inst0_O[0]), .O(inst1_O));
LUT2 #(.INIT(4'h2)) inst2 (.I0(I[1]), .I1(inst0_O[1]), .O(inst2_O));
assign O = {inst2_O,inst1_O};
endmodule

