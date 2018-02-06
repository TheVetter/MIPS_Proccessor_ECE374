view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 0 -period 1000ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/alu/clock 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 1000ns Edit:/alu/clock 
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 150ns sim:/alu/reset 
wave modify -driver freeze -pattern constant -value 0 -starttime 150ns -endtime 1000ns Edit:/alu/reset 
WaveCollapseAll -1
wave clipboard restore
