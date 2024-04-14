/*
alu_opcode  funct3  {opcode_bit5, funct7_bit5}  alu_control instruction_description
    00        x                 x                   000           lw, sw
    01        x                 x                   001           beq
    10        000           00 | 01 | 10            000           add
    10        000               11                  000           sub
    10        010               x                   101           slt
    10        110               x                   011           or
    10        111               x                   010           and
*/

module alu_decoder (
    input opcode_bit5,
    input funct7_bit5,
    input [2:0] funct3,
    output [3:0] alu_control
);
  wire [1:0] concat;
  assign concat = {opcode_bit5, funct7_bit5};
  assign alu_control = (alu_control)

endmodule
