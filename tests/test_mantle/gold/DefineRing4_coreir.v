module DFF_init1_has_ceFalse_has_resetFalse_has_async_resetFalse (input  I, output  O, input  CLK);
wire [0:0] inst0_out;
coreir_reg_P #(.init(1)) inst0 (.in({I}), .clk(CLK), .out(inst0_out));
assign O = inst0_out[0];
endmodule

module DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse (input  I, output  O, input  CLK);
wire [0:0] inst0_out;
coreir_reg_P #(.init(0)) inst0 (.in({I}), .clk(CLK), .out(inst0_out));
assign O = inst0_out[0];
endmodule

module Ring4_0001 (output [3:0] O, input  CLK);
wire  inst0_O;
wire  inst1_O;
wire  inst2_O;
wire  inst3_O;
DFF_init1_has_ceFalse_has_resetFalse_has_async_resetFalse inst0 (.I(inst3_O), .O(inst0_O), .CLK(CLK));
DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse inst1 (.I(inst0_O), .O(inst1_O), .CLK(CLK));
DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse inst2 (.I(inst1_O), .O(inst2_O), .CLK(CLK));
DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse inst3 (.I(inst2_O), .O(inst3_O), .CLK(CLK));
assign O = {inst3_O,inst2_O,inst1_O,inst0_O};
endmodule

