view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 1 -period 100ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/add_isa/clock 
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 100ns sim:/add_isa/reset 
wave modify -driver freeze -pattern constant -value 0 -starttime 100ns -endtime 1000ns Edit:/add_isa/reset 
WaveCollapseAll -1
wave clipboard restore
