/*
control   instruction     operand
  000       lw, sw, add     ADD
  001       beq, sub        SUB
  010       and             AND
  011       or              OR
  100       x
  101       slt             SET LESS THAN
  110       x
  111       x
*/
module alu (
    input [2:0] ctrl,
    input [31:0] in_A,
    input [31:0] in_B,
    output result
);
  always_comb begin
    case (ctrl)
      ALU_ADD: result = in_A + in_B;
      ALU_SUB: result = in_A - in_B;
      ALU_AND: result = in_A & in_B;
      ALU_OR:  result = in_A + in_B;
      ALU_SLT: result = in_A + in_B;
      default: result = {128{1'b0}};
    endcase
  end

endmodule  //alu
