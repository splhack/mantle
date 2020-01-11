module coreir_reg #(parameter width = 1, parameter clk_posedge = 1, parameter init = 1) (input clk, input [width-1:0] in, output [width-1:0] out);
  reg [width-1:0] outReg=init;
  wire real_clk;
  assign real_clk = clk_posedge ? clk : ~clk;
  always @(posedge real_clk) begin
    outReg <= in;
  end
  assign out = outReg;
endmodule

module Add8_cout (output COUT, input [7:0] I0, input [7:0] I1, output [7:0] O);
wire [8:0] coreir_add9_inst0_out;
assign coreir_add9_inst0_out = ({1'b0,I0[7],I0[6],I0[5],I0[4],I0[3],I0[2],I0[1],I0[0]}) + ({1'b0,I1[7],I1[6],I1[5],I1[4],I1[3],I1[2],I1[1],I1[0]});
assign COUT = coreir_add9_inst0_out[8];
assign O = {coreir_add9_inst0_out[7],coreir_add9_inst0_out[6],coreir_add9_inst0_out[5],coreir_add9_inst0_out[4],coreir_add9_inst0_out[3],coreir_add9_inst0_out[2],coreir_add9_inst0_out[1],coreir_add9_inst0_out[0]};
endmodule

module Counter8_COUT (input CLK, output COUT, output [7:0] O);
wire [7:0] Add8_cout_inst0_O;
Add8_cout Add8_cout_inst0(.COUT(COUT), .I0(O), .I1(8'h01), .O(Add8_cout_inst0_O));
coreir_reg #(.clk_posedge(1'b1), .init(8'h00), .width(8)) reg_P_inst0(.clk(CLK), .in(Add8_cout_inst0_O), .out(O));
endmodule
