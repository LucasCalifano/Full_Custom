exec rm -rf ./WORK
read_verilog -container r -libname WORK -05 { ../core/rv32imsu/riscv_regfile.v ../core/rv32imsu/riscv_muldiv.v ../core/rv32imsu/riscv_mmu.v ../core/rv32imsu/riscv_mmu_arb.v ../core/rv32imsu/riscv_lsu.v ../core/rv32imsu/riscv_fetch.v ../core/rv32imsu/riscv_exec.v ../core/rv32imsu/riscv_defs.v ../core/rv32imsu/riscv_decode.v ../core/rv32imsu/riscv_csr.v ../core/rv32imsu/riscv_core.v ../core/rv32imsu/riscv_alu.v }
set_top r:/WORK/riscv_core

read_verilog -container i -libname WORK -05 { ./results/riscv_core.v } 
read_db { /home/net/local/SAED32nm_EDK_02_2024/lib/stdcell_rvt/db_nldm/saed32rvt_ss0p75v25c.db }
set_top i:/WORK/riscv_core

match
verify
quit
