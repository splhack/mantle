module Add2_cin (
    input [1:0] I0,
    input [1:0] I1,
    output [1:0] O,
    input CIN
);
assign O = (({1'b0,CIN}) + I0) + I1;
endmodule

