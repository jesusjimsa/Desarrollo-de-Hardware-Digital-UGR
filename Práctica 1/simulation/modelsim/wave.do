onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /my_scomp_v0_0/reset
add wave -noupdate /my_scomp_v0_0/reloj
add wave -noupdate -radix hexadecimal /my_scomp_v0_0/PROC/AC_out
add wave -noupdate -radix hexadecimal /my_scomp_v0_0/PROC/IR_out
add wave -noupdate -radix hexadecimal /my_scomp_v0_0/PROC/PC_out
add wave -noupdate -radix hexadecimal /my_scomp_v0_0/PROC/MEMq
add wave -noupdate -radix hexadecimal /my_scomp_v0_0/PROC/MEMdata
add wave -noupdate -radix hexadecimal /my_scomp_v0_0/PROC/MEMwe
add wave -noupdate -radix hexadecimal /my_scomp_v0_0/PROC/MEMadr
add wave -noupdate -radix hexadecimal /my_scomp_v0_0/PROC/state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {5 ps} 0}
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
configure wave -timelineunits ps
update
WaveRestoreZoom {1576 ps} {2152 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10ns sim:/my_scomp_v0_0/reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 50ps Edit:/my_scomp_v0_0/reset 
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ns -endtime 10ns sim:/my_scomp_v0_0/reloj 
WaveCollapseAll -1
wave clipboard restore
