verdiSetActWin -dock widgetDock_<Decl._Tree>
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiWindowResize -win $_Verdi_1 "3340" "358" "900" "700"
verdiWindowResize -win $_Verdi_1 "3094" "338" "1247" "925"
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
verdiWindowResize -win $_Verdi_1 "2011" "368" "1671" "1061"
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "riscv_core" -win $_nTrace1
srcHBSelect "riscv_core" -win $_nTrace1
srcSetScope "riscv_core" -delim "." -win $_nTrace1
srcHBSelect "riscv_core" -win $_nTrace1
srcHBSelect "riscv_core" -win $_nTrace1
srcHBSelect "riscv_core" -win $_nTrace1
srcSetScope "riscv_core" -delim "." -win $_nTrace1
srcHBSelect "riscv_core" -win $_nTrace1
srcHBSelect "riscv_core" -win $_nTrace1
srcHBSelect "riscv_core" -win $_nTrace1
schCreateWindow -delim "." -win $_nSchema1 -scope "riscv_core"
verdiSetActWin -win $_nSchema_2
verdiSetActWin -dock widgetDock_<Message>
verdiDockWidgetUndock -dock widgetDock_<Message>
verdiWindowResize -win $_Verdi_1 "1549" "368" "2133" "1061"
verdiDockWidgetDock -dock widgetDock_<Message>
verdiWindowResize -win $_Verdi_1 "1549" "368" "2378" "1061"
verdiSetActWin -dock widgetDock_<Inst._Tree>
verdiWindowResize -win $_Verdi_1 "1911" "368" "2016" "1061"
schSelect -win $_nSchema2 -inst "u_decode"
verdiSetActWin -win $_nSchema_2
schPushViewIn -win $_nSchema2
verdiSetActWin -dock widgetDock_<Inst._Tree>
verdiWindowResize -win $_Verdi_1 "1816" "298" "2180" "1061"
verdiSetActWin -win $_nSchema_2
verdiSetActWin -dock widgetDock_<Message>
debExit
