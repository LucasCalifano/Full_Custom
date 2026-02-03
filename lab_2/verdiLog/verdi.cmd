verdiSetActWin -dock widgetDock_<Decl._Tree>
wvCreateWindow
wvConvertFile -win $_nWave2 -o \
           "/home/net/lu282362/full_custom/lab_2/fib_tb.vcd.fsdb" \
           "/home/net/lu282362/full_custom/lab_2/fib_tb.vcd"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 {/home/net/lu282362/full_custom/lab_2/fib_tb.vcd.fsdb}
wvSetPosition -win $_nWave2 {("G1" 0)}
nMemSetPreference
srcSetDisplayAttr -font {-fromGUI}
srcSetDisplayAttr -annotFont {DejaVu Sans Mono 8}
verdiWindowResize -win $_Verdi_1 "2230" "370" "900" "700"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
wvAddAllSignals -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 28)}
wvSetPosition -win $_nWave2 {("G1" 28)}
verdiWindowResize -win $_Verdi_1 "1721" "31" "1718" "1360"
verdiSetActWin -dock widgetDock_<Inst._Tree>
verdiWindowResize -win $_Verdi_1 "1112" "31" "2327" "1360"
verdiSetActWin -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
