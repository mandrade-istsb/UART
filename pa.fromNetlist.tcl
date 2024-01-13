
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name UART_RxTx -dir "C:/VHDL_Repositorio/SERIAL/RS232_Digilent/UART_RxTx/planAhead_run_4" -part xc3s500efg320-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/VHDL_Repositorio/SERIAL/RS232_Digilent/UART_RxTx/Rs232_RxTx.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/VHDL_Repositorio/SERIAL/RS232_Digilent/UART_RxTx} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "Rs232_RxTx.ucf" [current_fileset -constrset]
add_files [list {Rs232_RxTx.ucf}] -fileset [get_property constrset [current_run]]
link_design
