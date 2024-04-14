`ifndef _CONSTANTS_H_
`define _CONSTANTS_H_

// Instruction opcodes by type
`define LUI_OPCODE 7'b011_0111     // U lui
`define AUIPC_OPCODE 7'b001_0111     // U auipc
`define JAL_OPCODE 7'b110_1111     // J jal
`define JALR_OPCODE 7'b110_0111     // I jalr
`define BRANCH_OPCODE 7'b110_0011     // B beq bne blt bge bltu bgeu
`define LOAD_OPCODE 7'b000_0011     // I lb lh lw lbu lhu
`define STORE_OPCODE 7'b010_0011     // S sb sh sw
`define IMM_ALU_OPCODE 7'b001_0011     // I addi slti sltiu xori ori andi slli srli srai
`define REG_ALU_OPCODE 7'b011_0011     // R add sub sll slt sltu xor srl sra or and
`define CALL_BREAK_OPCODE 7'b111_0011     // I ecall ebreak
`define CSRR_OPCODE 7'b111_0011     // I csrrw csrrs csrrc csrrwi csrrsi csrrci

/* ALU Control Constants
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
`define ALU_ADD 3'b000
`define ALU_SUB 3'b001
`define ALU_AND 3'b010
`define ALU_OR 3'b011
`define ALU_SLT 3'b101


`endif
