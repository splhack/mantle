module coreir_reg #(parameter width = 1, parameter clk_posedge = 1, parameter init = 1) (input clk, input [width-1:0] in, output [width-1:0] out);
  reg [width-1:0] outReg=init;
  wire real_clk;
  assign real_clk = clk_posedge ? clk : ~clk;
  always @(posedge real_clk) begin
    outReg <= in;
  end
  assign out = outReg;
endmodule

module coreir_const #(parameter width = 1, parameter value = 1) (output [width-1:0] out);
  assign out = value;
endmodule

module coreir_add #(parameter width = 1) (input [width-1:0] in0, input [width-1:0] in1, output [width-1:0] out);
  assign out = in0 + in1;
endmodule

module corebit_const #(parameter value = 1) (output out);
  assign out = value;
endmodule

module Add4_cout (output COUT, input [3:0] I0, input [3:0] I1, output [3:0] O);
wire bit_const_0_None_out;
wire [4:0] coreir_add5_inst0_out;
corebit_const #(.value(1'b0)) bit_const_0_None(.out(bit_const_0_None_out));
coreir_add #(.width(5)) coreir_add5_inst0(.in0({bit_const_0_None_out,I0[3],I0[2],I0[1],I0[0]}), .in1({bit_const_0_None_out,I1[3],I1[2],I1[1],I1[0]}), .out(coreir_add5_inst0_out));
assign COUT = coreir_add5_inst0_out[4];
assign O = {coreir_add5_inst0_out[3],coreir_add5_inst0_out[2],coreir_add5_inst0_out[1],coreir_add5_inst0_out[0]};
endmodule

module Counter4_COUT (input CLK, output COUT, output [3:0] O);
wire Add4_cout_inst0_COUT;
wire [3:0] Add4_cout_inst0_O;
wire [3:0] const_1_4_out;
wire [3:0] reg_P_inst0_out;
Add4_cout Add4_cout_inst0(.COUT(Add4_cout_inst0_COUT), .I0(reg_P_inst0_out), .I1(const_1_4_out), .O(Add4_cout_inst0_O));
coreir_const #(.value(4'h1), .width(4)) const_1_4(.out(const_1_4_out));
coreir_reg #(.clk_posedge(1'b1), .init(4'h0), .width(4)) reg_P_inst0(.clk(CLK), .in(Add4_cout_inst0_O), .out(reg_P_inst0_out));
assign COUT = Add4_cout_inst0_COUT;
assign O = reg_P_inst0_out;
endmodule
