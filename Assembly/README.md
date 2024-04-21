Compilation steps:
Compile c/asm file into object file.
Link compiled object files together with any external object file to .elf executable file.
Generate hex file from .elf executable to load the processor memory with.

Compile example:
riscv32-unknown-elf-gcc -march=rv32i -mabi=ilp32 -mno-relax -c input.c -o output.o

riscv32-unknown-elf-gcc: compiler program
-march=rv32i: only base integer instuctions
-mabi=ilp32: integer, long and pointer width are 32-bit
-mno-relax: not allow linker to modify code for optimization
-c: compile only flag

Linker script:
- Define system memory (one, two, read only, read/write/execute)
- How the code is placed in memory
- Where each code section should go

