all: output/pl.dtsi output/shell.json output/bram_wrapper.bit.bin

vivado:
	vivado -nolog -nojournal kria/kria.xpr

kria/kria.runs/impl_1/bram_wrapper.bin:
	vivado -nolog -nojournal -mode batch -source genbitstream.tcl

output/bram_wrapper.bit.bin: kria/kria.runs/impl_1/bram_wrapper.bin
	cp kria/kria.runs/impl_1/bram_wrapper.bin output/bram_wrapper.bit.bin
	
hw/bram_wrapper.xsa: output/bram_wrapper.bit.bin

output/pl.dtsi: hw/bram_wrapper.xsa
	xsct createdts.tcl && cp plat/psu_cortexa53_0/device_tree_domain/bsp/pl.dtsi output/ && cat dtsi_add.dtsi >> output/pl.dtsi
	
output/shell.json:
	echo '{"shell_type":"PL_FLAT","num_pl_slots":0,"num_aie_slots":0}' > output/shell.json

clean:
	rm -rf kria/kria.runs/impl_1/bram_wrapper.bin plat output/* hw/*
