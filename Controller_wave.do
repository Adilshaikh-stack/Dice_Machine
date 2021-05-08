onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label Clk /controller_tb/clk
add wave -noupdate -label Roll /controller_tb/en
add wave -noupdate -label Reset /controller_tb/rst
add wave -noupdate -divider Comparator
add wave -noupdate -label Eq /controller_tb/Controller_tb/Eq
add wave -noupdate -label Sp /controller_tb/Controller_tb/Sp
add wave -noupdate -label State /controller_tb/Controller_tb/state
add wave -noupdate -divider Counters
add wave -noupdate -label Count1 -radix unsigned /controller_tb/Controller_tb/Dice_Controller/count1
add wave -noupdate -label Count2 -radix unsigned /controller_tb/Controller_tb/Dice_Controller/count2
add wave -noupdate -divider {Seed Value}
add wave -noupdate -label Seed1 -radix unsigned /controller_tb/Controller_tb/Dice_Controller/seed1
add wave -noupdate -label Seed2 -radix unsigned /controller_tb/Controller_tb/Dice_Controller/seed2
add wave -noupdate -divider Sum
add wave -noupdate -label Sum -radix unsigned /controller_tb/Controller_tb/Dice_Controller/sum0
add wave -noupdate -divider Win/Lose
add wave -noupdate -label Win /controller_tb/win
add wave -noupdate -label Lose /controller_tb/lose
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {623592 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 243
configure wave -valuecolwidth 146
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
WaveRestoreZoom {0 ps} {2327280 ps}
