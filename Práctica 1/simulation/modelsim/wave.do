onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /my_scomp_v0_0/reset
add wave -noupdate /my_scomp_v0_0/reloj
add wave -noupdate -radix hexadecimal /my_scomp_v0_0/IR_out
add wave -noupdate -radix hexadecimal /my_scomp_v0_0/AC_out
add wave -noupdate -radix hexadecimal /my_scomp_v0_0/PC_out
add wave -noupdate -radix hexadecimal /my_scomp_v0_0/MEMq
add wave -noupdate -radix hexadecimal /my_scomp_v0_0/MEMdata
add wave -noupdate -radix hexadecimal /my_scomp_v0_0/MEMadr
add wave -noupdate -radix hexadecimal /my_scomp_v0_0/MEMwe
add wave -noupdate -radix hexadecimal /my_scomp_v0_0/PROC/state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {161 ps} 0}
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
WaveRestoreZoom {0 ps} {256 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/my_scomp_v0_0/reset 
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/my_scomp_v0_0/reloj 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 10000ps sim:/my_scomp_v0_0/reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 10ps Edit:/my_scomp_v0_0/reset 
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ps -endtime 10000ps sim:/my_scomp_v0_0/reloj 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 50ps Edit:/my_scomp_v0_0/reset 
WaveCollapseAll -1
wave clipboard restore
