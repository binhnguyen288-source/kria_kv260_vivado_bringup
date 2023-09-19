
open_project kria/kria.xpr
update_compile_order -fileset sources_1
set_param general.maxThreads 8
update_module_reference [get_ips]
generate_target all [get_files kria/kria.srcs/sources_1/bd/bram/bram.bd]
set ooc_runs [create_ip_run -force [get_files -of_objects [get_fileset sources_1] kria/kria.srcs/sources_1/bd/bram/bram.bd]]
launch_runs $ooc_runs -jobs 8
wait_on_run $ooc_runs
reset_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
write_hw_platform -fixed -include_bit -force -file hw/bram_wrapper.xsa
