vlib work
vdel -all
vlib work

vlog mod100_skip13.v +acc
vlog +acc mod100_skip13_tb.v

vsim work.tb
add wave -r *
run -all