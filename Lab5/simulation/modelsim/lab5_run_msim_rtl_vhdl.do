transcript on
vmap altera C:/MSim_lib/vhdl_libs/altera
vmap lpm C:/MSim_lib/vhdl_libs/lpm
vmap sgate C:/MSim_lib/vhdl_libs/sgate
vmap altera_mf C:/MSim_lib/vhdl_libs/altera_mf
vmap altera_lnsim C:/MSim_lib/vhdl_libs/altera_lnsim
vmap cycloneive C:/MSim_lib/vhdl_libs/cycloneive
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/ECE374_Comp_org/mips-add-vhdl/Lab5/components.vhd}
vcom -93 -work work {E:/ECE374_Comp_org/mips-add-vhdl/Lab5/dec2to4.vhd}
vcom -93 -work work {E:/ECE374_Comp_org/mips-add-vhdl/Lab5/fulladd.vhd}
vcom -93 -work work {E:/ECE374_Comp_org/mips-add-vhdl/Lab5/mux2to1.vhd}
vcom -93 -work work {E:/ECE374_Comp_org/mips-add-vhdl/Lab5/regN.vhd}
vcom -93 -work work {E:/ECE374_Comp_org/mips-add-vhdl/Lab5/trin.vhd}
vcom -93 -work work {E:/ECE374_Comp_org/mips-add-vhdl/Lab5/reg1.vhd}
vcom -93 -work work {E:/ECE374_Comp_org/mips-add-vhdl/Lab5/lab5.vhd}
vcom -93 -work work {E:/ECE374_Comp_org/mips-add-vhdl/Lab5/alu.vhd}
vcom -93 -work work {E:/ECE374_Comp_org/mips-add-vhdl/Lab5/data_memory.vhd}
vcom -93 -work work {E:/ECE374_Comp_org/mips-add-vhdl/Lab5/dec4to16.vhd}
vcom -93 -work work {E:/ECE374_Comp_org/mips-add-vhdl/Lab5/instruction_decode.vhd}
vcom -93 -work work {E:/ECE374_Comp_org/mips-add-vhdl/Lab5/instruction_memory.vhd}
vcom -93 -work work {E:/ECE374_Comp_org/mips-add-vhdl/Lab5/mux4to1.vhd}
vcom -93 -work work {E:/ECE374_Comp_org/mips-add-vhdl/Lab5/register_file.vhd}
vcom -93 -work work {E:/ECE374_Comp_org/mips-add-vhdl/Lab5/ripple_carry.vhd}
vcom -93 -work work {E:/ECE374_Comp_org/mips-add-vhdl/Lab5/forwardingUnit.vhd}

