verdiSetActWin -dock widgetDock_<Decl._Tree>
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiWindowResize -win $_Verdi_1 "2770" "610" "900" "700"
debImport "/home/net/lu282362/full_custom/lab_5/core/core/rv32imsu/riscv_alu.v" \
          "/home/net/lu282362/full_custom/lab_5/core/core/rv32imsu/riscv_core.v" \
          "/home/net/lu282362/full_custom/lab_5/core/core/rv32imsu/riscv_csr.v" \
          "/home/net/lu282362/full_custom/lab_5/core/core/rv32imsu/riscv_decode.v" \
          "/home/net/lu282362/full_custom/lab_5/core/core/rv32imsu/riscv_defs.v" \
          "/home/net/lu282362/full_custom/lab_5/core/core/rv32imsu/riscv_exec.v" \
          "/home/net/lu282362/full_custom/lab_5/core/core/rv32imsu/riscv_fetch.v" \
          "/home/net/lu282362/full_custom/lab_5/core/core/rv32imsu/riscv_lsu.v" \
          "/home/net/lu282362/full_custom/lab_5/core/core/rv32imsu/riscv_mmu.v" \
          "/home/net/lu282362/full_custom/lab_5/core/core/rv32imsu/riscv_mmu_arb.v" \
          "/home/net/lu282362/full_custom/lab_5/core/core/rv32imsu/riscv_muldiv.v" \
          "/home/net/lu282362/full_custom/lab_5/core/core/rv32imsu/riscv_regfile.v" \
          -path {/home/net/lu282362/full_custom/lab_5/core/core/rv32imsu}
srcHBSelect "riscv_core" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debExit
