module Decoder4 (input [3:0] I, output [15:0] O);
wire  SB_LUT4_inst0_O;
wire  SB_LUT4_inst1_O;
wire  SB_LUT4_inst2_O;
wire  SB_LUT4_inst3_O;
wire  SB_LUT4_inst4_O;
wire  SB_LUT4_inst5_O;
wire  SB_LUT4_inst6_O;
wire  SB_LUT4_inst7_O;
wire  SB_LUT4_inst8_O;
wire  SB_LUT4_inst9_O;
wire  SB_LUT4_inst10_O;
wire  SB_LUT4_inst11_O;
wire  SB_LUT4_inst12_O;
wire  SB_LUT4_inst13_O;
wire  SB_LUT4_inst14_O;
wire  SB_LUT4_inst15_O;
SB_LUT4 #(.LUT_INIT(16'h0001)) SB_LUT4_inst0 (.I0(I[0]), .I1(I[1]), .I2(I[2]), .I3(I[3]), .O(SB_LUT4_inst0_O));
SB_LUT4 #(.LUT_INIT(16'h0002)) SB_LUT4_inst1 (.I0(I[0]), .I1(I[1]), .I2(I[2]), .I3(I[3]), .O(SB_LUT4_inst1_O));
SB_LUT4 #(.LUT_INIT(16'h0004)) SB_LUT4_inst2 (.I0(I[0]), .I1(I[1]), .I2(I[2]), .I3(I[3]), .O(SB_LUT4_inst2_O));
SB_LUT4 #(.LUT_INIT(16'h0008)) SB_LUT4_inst3 (.I0(I[0]), .I1(I[1]), .I2(I[2]), .I3(I[3]), .O(SB_LUT4_inst3_O));
SB_LUT4 #(.LUT_INIT(16'h0010)) SB_LUT4_inst4 (.I0(I[0]), .I1(I[1]), .I2(I[2]), .I3(I[3]), .O(SB_LUT4_inst4_O));
SB_LUT4 #(.LUT_INIT(16'h0020)) SB_LUT4_inst5 (.I0(I[0]), .I1(I[1]), .I2(I[2]), .I3(I[3]), .O(SB_LUT4_inst5_O));
SB_LUT4 #(.LUT_INIT(16'h0040)) SB_LUT4_inst6 (.I0(I[0]), .I1(I[1]), .I2(I[2]), .I3(I[3]), .O(SB_LUT4_inst6_O));
SB_LUT4 #(.LUT_INIT(16'h0080)) SB_LUT4_inst7 (.I0(I[0]), .I1(I[1]), .I2(I[2]), .I3(I[3]), .O(SB_LUT4_inst7_O));
SB_LUT4 #(.LUT_INIT(16'h0100)) SB_LUT4_inst8 (.I0(I[0]), .I1(I[1]), .I2(I[2]), .I3(I[3]), .O(SB_LUT4_inst8_O));
SB_LUT4 #(.LUT_INIT(16'h0200)) SB_LUT4_inst9 (.I0(I[0]), .I1(I[1]), .I2(I[2]), .I3(I[3]), .O(SB_LUT4_inst9_O));
SB_LUT4 #(.LUT_INIT(16'h0400)) SB_LUT4_inst10 (.I0(I[0]), .I1(I[1]), .I2(I[2]), .I3(I[3]), .O(SB_LUT4_inst10_O));
SB_LUT4 #(.LUT_INIT(16'h0800)) SB_LUT4_inst11 (.I0(I[0]), .I1(I[1]), .I2(I[2]), .I3(I[3]), .O(SB_LUT4_inst11_O));
SB_LUT4 #(.LUT_INIT(16'h1000)) SB_LUT4_inst12 (.I0(I[0]), .I1(I[1]), .I2(I[2]), .I3(I[3]), .O(SB_LUT4_inst12_O));
SB_LUT4 #(.LUT_INIT(16'h2000)) SB_LUT4_inst13 (.I0(I[0]), .I1(I[1]), .I2(I[2]), .I3(I[3]), .O(SB_LUT4_inst13_O));
SB_LUT4 #(.LUT_INIT(16'h4000)) SB_LUT4_inst14 (.I0(I[0]), .I1(I[1]), .I2(I[2]), .I3(I[3]), .O(SB_LUT4_inst14_O));
SB_LUT4 #(.LUT_INIT(16'h8000)) SB_LUT4_inst15 (.I0(I[0]), .I1(I[1]), .I2(I[2]), .I3(I[3]), .O(SB_LUT4_inst15_O));
assign O = {SB_LUT4_inst15_O,SB_LUT4_inst14_O,SB_LUT4_inst13_O,SB_LUT4_inst12_O,SB_LUT4_inst11_O,SB_LUT4_inst10_O,SB_LUT4_inst9_O,SB_LUT4_inst8_O,SB_LUT4_inst7_O,SB_LUT4_inst6_O,SB_LUT4_inst5_O,SB_LUT4_inst4_O,SB_LUT4_inst3_O,SB_LUT4_inst2_O,SB_LUT4_inst1_O,SB_LUT4_inst0_O};
endmodule

