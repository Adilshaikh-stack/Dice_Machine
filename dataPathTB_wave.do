onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label Clk /datapath_tb/clk
add wave -noupdate -label En /datapath_tb/en
add wave -noupdate -label Roll /datapath_tb/roll
add wave -noupdate -label Reset /datapath_tb/rst
add wave -noupdate -divider Counter
add wave -noupdate -label Count1 -radix unsigned /datapath_tb/UUT/count1
add wave -noupdate -label Count2 -radix unsigned /datapath_tb/UUT/count2
add wave -noupdate -label seed1 -radix unsigned /datapath_tb/UUT/seed1
add wave -noupdate -label Seed2 -radix unsigned /datapath_tb/UUT/seed2
add wave -noupdate -divider Adder
add wave -noupdate -label AdderOut -radix unsigned /datapath_tb/UUT/sum0
add wave -noupdate -divider Point
add wave -noupdate -label {Point register Out} -radix unsigned /datapath_tb/UUT/PointOut
add wave -noupdate -divider {Test Logic}
add wave -noupdate -label D7 /datapath_tb/D7
add wave -noupdate -label D711 /datapath_tb/D711
add wave -noupdate -label D2312 /datapath_tb/D2312
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {252044 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 282
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {349595 ps}
