set corner {ss0p75v125c}
set period 7 
create_clock -name clk [get_ports clk_i] -period ${period}
set_false_path -from [get_ports rst_i]
set_driving_cell -lib_cell SAEDRVT14_INV_4 [ all_inputs ]
set_input_delay -add_delay -clock clk 1.0 [remove_from_collection [all_inputs] clk_i]
set_output_delay -add_delay -clock clk 1.0 [all_outputs]
group_path -name REGOUT      -to   [all_outputs]
group_path -name REG2REG     -from [all_registers]   -to   [all_registers]
group_path -name REGIN       -from [all_inputs]
group_path -name FEEDTHROUGH -from [remove_from_collection [all_inputs] [get_ports {clk_i}]] -to [all_outputs]
set_clock_uncertainty -setup [expr ${period}*(0.05)] [get_clocks clk]
set_clock_uncertainty -hold [expr ${period}*(0.02)] [get_clocks clk]
set_max_fanout 32 [current_design]
