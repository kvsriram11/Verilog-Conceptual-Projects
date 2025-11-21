vlib work
vdel -all
vlib work

vlog mod100.v +acc
vlog +acc mod100_tb.v

vsim work.tb
add wave -r *
run -all