view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 26ns sim:/contador_8bits/Reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 50ps Edit:/contador_8bits/Reset 
wave create -driver freeze -pattern clock -initialvalue U -period 100ps -dutycycle 50 -starttime 0ns -endtime 26ns sim:/contador_8bits/Reloj 
wave modify -driver freeze -pattern clock -initialvalue U -period 100ps -dutycycle 50 -starttime 0ns -endtime 26ns Edit:/contador_8bits/Reloj 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 50ps Edit:/contador_8bits/Reset 
wave modify -driver freeze -pattern clock -initialvalue U -period 100ps -dutycycle 50 -starttime 0ns -endtime 26ns Edit:/contador_8bits/Reloj 
WaveCollapseAll -1
wave clipboard restore
