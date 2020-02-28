transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/FPGA/taxi/time_price.vhd}
vcom -93 -work work {D:/FPGA/taxi/seg_trans.vhd}
vcom -93 -work work {D:/FPGA/taxi/div.vhd}
vcom -93 -work work {D:/FPGA/taxi/distance.vhd}
vcom -93 -work work {D:/FPGA/taxi/sum_price.vhd}
vcom -93 -work work {D:/FPGA/taxi/trans.vhd}

vcom -93 -work work {D:/FPGA/taxi/taxi_sim.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  taxi_sim

add wave *
view structure
view signals
run -all
