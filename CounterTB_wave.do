onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label Clk /counter_tb/clk
add wave -noupdate -label En /counter_tb/en
add wave -noupdate -label Rst /counter_tb/rst
add wave -noupdate -label Roll /counter_tb/Roll
add wave -noupdate -label Seed -radix unsigned /counter_tb/seed
add wave -noupdate -label Count -radix unsigned /counter_tb/count
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
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
WaveRestoreZoom {0 ps} {913 ps}
