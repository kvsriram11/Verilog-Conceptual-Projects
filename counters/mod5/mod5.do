vlib work
vdel -all
vlib work

vlog mod5.v +acc +define+PRIYA_PICKLE
vlog mod5_tb.v +acc

vsim work.tb
add wave -r *
run -all