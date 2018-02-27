transcript on
if ![file isdirectory vhdl_libs] {
	file mkdir vhdl_libs
}

vlib vhdl_libs/altera
vmap altera ./vhdl_libs/altera
vcom -93 -work altera {c:/altera/13.0/quartus/eda/sim_lib/altera_syn_attributes.vhd}
vcom -93 -work altera {c:/altera/13.0/quartus/eda/sim_lib/altera_standard_functions.vhd}
vcom -93 -work altera {c:/altera/13.0/quartus/eda/sim_lib/alt_dspbuilder_package.vhd}
vcom -93 -work altera {c:/altera/13.0/quartus/eda/sim_lib/altera_europa_support_lib.vhd}
vcom -93 -work altera {c:/altera/13.0/quartus/eda/sim_lib/altera_primitives_components.vhd}
vcom -93 -work altera {c:/altera/13.0/quartus/eda/sim_lib/altera_primitives.vhd}

vlib vhdl_libs/lpm
vmap lpm ./vhdl_libs/lpm
vcom -93 -work lpm {c:/altera/13.0/quartus/eda/sim_lib/220pack.vhd}
vcom -93 -work lpm {c:/altera/13.0/quartus/eda/sim_lib/220model.vhd}

vlib vhdl_libs/sgate
vmap sgate ./vhdl_libs/sgate
vcom -93 -work sgate {c:/altera/13.0/quartus/eda/sim_lib/sgate_pack.vhd}
vcom -93 -work sgate {c:/altera/13.0/quartus/eda/sim_lib/sgate.vhd}

vlib vhdl_libs/altera_mf
vmap altera_mf ./vhdl_libs/altera_mf
vcom -93 -work altera_mf {c:/altera/13.0/quartus/eda/sim_lib/altera_mf_components.vhd}
vcom -93 -work altera_mf {c:/altera/13.0/quartus/eda/sim_lib/altera_mf.vhd}

vlib vhdl_libs/altera_lnsim
vmap altera_lnsim ./vhdl_libs/altera_lnsim
vlog -sv -work altera_lnsim {c:/altera/13.0/quartus/eda/sim_lib/mentor/altera_lnsim_for_vhdl.sv}
vcom -93 -work altera_lnsim {c:/altera/13.0/quartus/eda/sim_lib/altera_lnsim_components.vhd}

vlib vhdl_libs/cycloneive
vmap cycloneive ./vhdl_libs/cycloneive
vcom -93 -work cycloneive {c:/altera/13.0/quartus/eda/sim_lib/cycloneive_atoms.vhd}
vcom -93 -work cycloneive {c:/altera/13.0/quartus/eda/sim_lib/cycloneive_components.vhd}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/ECE374_Comp_org/mips-add-vhdl/MIPS_Lab4/trin.vhd}
vcom -93 -work work {E:/ECE374_Comp_org/mips-add-vhdl/MIPS_Lab4/regN.vhd}
vcom -93 -work work {E:/ECE374_Comp_org/mips-add-vhdl/MIPS_Lab4/mux2to1.vhd}
vcom -93 -work work {E:/ECE374_Comp_org/mips-add-vhdl/MIPS_Lab4/fulladd.vhd}
vcom -93 -work work {E:/ECE374_Comp_org/mips-add-vhdl/MIPS_Lab4/dec2to4.vhd}
vcom -93 -work work {E:/ECE374_Comp_org/mips-add-vhdl/MIPS_Lab4/components.vhd}
vcom -93 -work work {E:/ECE374_Comp_org/mips-add-vhdl/MIPS_Lab4/data_memory.vhd}
vcom -93 -work work {E:/ECE374_Comp_org/mips-add-vhdl/MIPS_Lab4/alu.vhd}
vcom -93 -work work {E:/ECE374_Comp_org/mips-add-vhdl/MIPS_Lab4/MIPS_LAB4.vhd}
vcom -93 -work work {E:/ECE374_Comp_org/mips-add-vhdl/MIPS_Lab4/ripple_carry.vhd}
vcom -93 -work work {E:/ECE374_Comp_org/mips-add-vhdl/MIPS_Lab4/register_file.vhd}
vcom -93 -work work {E:/ECE374_Comp_org/mips-add-vhdl/MIPS_Lab4/mux4to1.vhd}
vcom -93 -work work {E:/ECE374_Comp_org/mips-add-vhdl/MIPS_Lab4/instruction_memory.vhd}
vcom -93 -work work {E:/ECE374_Comp_org/mips-add-vhdl/MIPS_Lab4/instruction_decode.vhd}
vcom -93 -work work {E:/ECE374_Comp_org/mips-add-vhdl/MIPS_Lab4/dec4to16.vhd}

