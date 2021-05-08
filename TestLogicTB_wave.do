onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label Clk /test_logic_tb/clk
add wave -noupdate -label Adderin -radix unsigned /test_logic_tb/adderIN
add wave -noupdate -label D7 /test_logic_tb/D7
add wave -noupdate -label D7D11 /test_logic_tb/D711
add wave -noupdate -label D2312 /test_logic_tb/D2312
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
WaveRestoreZoom {0 ps} {344345 ps}
