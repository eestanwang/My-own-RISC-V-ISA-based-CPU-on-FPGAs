`include "./headers/constants.v"

module main_decoder (
    // Instruction Opcode
    input wire [6:0] opcode,

    // Instruction Decode into Control Signals
    output reg reg_wr,
    output reg mem_wr,
    output reg alu_src,
    output reg pc_src,
    output reg branch,
    output reg jalr,
    output reg jump,
    output reg [1:0] imm_src,
    output reg [1:0] alu_opcode,
    output reg [1:0] result_src
);

  always_comb begin
    case (opcode)
      LOAD_OPCODE: begin
        reg_wr = 1'b1;
        imm_src = 2'b00;
        alu_src = 1'b1;
        mem_wr = 1'b0;
        result_src = 2'b01;
        branch = 1'b0;
        alu_opcode = 2'b00;
        jump = 1'b0;
        jalr = 1'b0;
      end
      STORE_OPCODE: begin
        reg_wr = 1;
        imm_src = 2'b00;
        alu_src = 1;
        mem_wr = 0;
        result_src = 2'b01;
        branch = 0;
        alu_opcode = 2'b00;
        jump = 0;
        jalr = 0;
      end
      default: begin

      end
    endcase
  end

endmodule  //main_decoder
