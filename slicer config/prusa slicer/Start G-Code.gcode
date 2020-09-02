G90 ; use absolute coordinates
M83 ; extruder relative mode
M104 S[first_layer_temperature] ; set extruder temp
M140 S[first_layer_bed_temperature] ; set bed temp
M190 S[first_layer_bed_temperature] ; wait for bed temp
M109 S[first_layer_temperature] ; wait for extruder temp

G28 ; home all
M206 X-8 ; set offset
M206 Y-15; set offset
M206 Z-0.6 ; set offset

G1 Z0.34 F240
G92 E0.0

; purgeline
G1 Y15 F1200 ; startpoint
G1 X13 F1200 ; start point
G1 Y120 E4.0 F1200.0 
G1 X13.5 F5000
G1 Y15 E8.0 F1200.0 
G92 E0.0

; start printing