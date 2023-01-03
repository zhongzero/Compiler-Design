clang -S builtin.c --target=riscv32 -march=rv32im
# 由builtin.ll生成riscv32的builtin.s