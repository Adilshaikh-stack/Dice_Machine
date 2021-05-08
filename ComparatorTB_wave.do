onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label Clk /comparator_tb/clk
add wave -noupdate -label Eq /comparator_tb/Eq
add wave -noupdate -label Sp /comparator_tb/Sp
add wave -noupdate -label CA -radix unsigned /comparator_tb/CA
add wave -noupdate -label CB -radix unsigned /comparator_tb/CB
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
WaveRestoreZoom {0 ps} {185804 ps}
