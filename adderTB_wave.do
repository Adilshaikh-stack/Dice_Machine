onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label a -radix unsigned /adder_tb/a
add wave -noupdate -label b -radix unsigned /adder_tb/b
add wave -noupdate -label Sum -radix unsigned /adder_tb/sum
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1224489 ps} 0}
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
WaveRestoreZoom {1092113 ps} {1293365 ps}
