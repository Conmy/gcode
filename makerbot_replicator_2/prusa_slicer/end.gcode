M104 S0 ;turn off extruder
M140 S0 ;turn off bed
;Retract the filament
G92 E1
G1 E-1 F300
G28 X0 Y0
M84 ;disable motors
