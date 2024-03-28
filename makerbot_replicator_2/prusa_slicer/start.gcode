; Script based on an original created by tjjfvi (https://github.com/tjjfvi)
 ; An up-to-date version of the tjjfvi's original script can be found
; here:  https://csi.t6.fyi/
; Note - This script will only work in Cura V4.2 and above!

; -- start of START GCODE –


M73 P0 (enable build progress)
;M103 (disable RPM)
;G21 (set units to mm)
M92 X88.8 Y88.8 Z400 E101 ; sets steps per mm for replicator
G90 (set positioning to absolute)

(**** begin homing ****)

G162 X Y F4000 (home XY axes maximum)
G161 Z F3500 (home Z axis minimum)
G92 Z-4 (set Z to -4)
G1 Z0 F100 (move Z to "0")
;G161 Z F100 (home Z axis minimum)
;M132 X Y Z A B (Recall stored home offsets for XYZAB axis)

(**** end homing ****)

G92 X147 Y66 Z0
G1 X105 Y-60 Z10 F4000.0 (move to waiting position)
G130 X0 Y0 A0 B0 (Set Stepper motor Vref to lower value while heating)
G130 X127 Y127 A127 B127 (Set Stepper motor Vref to defaults)
G0 X105 Y-60 (Position Nozzle)
G0 Z0.6     (Position Height)


; -- end of START GCODE –
