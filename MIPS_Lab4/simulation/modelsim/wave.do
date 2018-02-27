view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 1 -period 100ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/mips_lab4/clock 
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 100ns sim:/mips_lab4/reset 
wave modify -driver freeze -pattern constant -value 0 -starttime 100ns -endtime 1000ns Edit:/mips_lab4/reset 
WaveCollapseAll -1
wave clipboard restore
