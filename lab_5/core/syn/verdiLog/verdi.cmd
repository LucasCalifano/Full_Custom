verdiSetActWin -dock widgetDock_<Decl._Tree>
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiWindowResize -win $_Verdi_1 "318" "82" "900" "700"
verdiWindowResize -win $_Verdi_1 "318" "82" "1106" "700"
verdiWindowResize -win $_Verdi_1 "318" "78" "1106" "704"
verdiWindowResize -win $_Verdi_1 "164" "65" "1204" "704"
verdiWindowResize -win $_Verdi_1 "769" "31" "766" "784"
verdiWindowResize -win $_Verdi_1 "529" "31" "1006" "784"
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
srcHBSelect "riscv_core" -win $_nTrace1
srcHBSelect "riscv_core" -win $_nTrace1
srcHBSelect "riscv_core" -win $_nTrace1
srcHBSelect "riscv_core" -win $_nTrace1
srcHBSelect "riscv_core.u_arb" -win $_nTrace1
verdiWindowResize -win $_Verdi_1 "291" "70" "1204" "704"
srcHBSelect "riscv_core" -win $_nTrace1
srcHBSelect "riscv_core" -win $_nTrace1
srcHBSelect "riscv_core" -win $_nTrace1
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcHBSelect "riscv_core.u_muldiv" -win $_nTrace1
srcHBSelect "riscv_core.u_exec" -win $_nTrace1
srcSetScope "riscv_core.u_exec" -delim "." -win $_nTrace1
srcHBSelect "riscv_core.u_exec" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "riscv_core.u_exec" -win $_nTrace1
srcSetScope "riscv_core.u_exec" -delim "." -win $_nTrace1
srcHBSelect "riscv_core.u_exec" -win $_nTrace1
