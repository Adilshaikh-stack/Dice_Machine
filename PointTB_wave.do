onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label roll /point_tb/roll
add wave -noupdate -label Clk /point_tb/clk
add wave -noupdate -label Reset /point_tb/reset
add wave -noupdate -label Adderin -radix unsigned /point_tb/adderin
add wave -noupdate -label PointOut -radix unsigned /point_tb/PointOut
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {28298 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
WaveRestoreZoom {0 ps} {150007 ps}
