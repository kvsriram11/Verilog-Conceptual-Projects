vlib work
vdel -all
vlib work

vlog repeat5.v +acc +define+FIVE012_NO3
vlog repeat5_tb.v +acc
vsim work.tb
add wave -r *
run -all
