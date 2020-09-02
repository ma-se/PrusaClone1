M104 S0 ; turn off temperature
M140 S0 ; turn off heatbed
M107 ; turn off fan
G92 E0.0
G1 E-1
{if layer_z < max_print_height}G1 Z{z_offset+min(layer_z+0.4, max_print_height)} F600{endif} ; Move print head up
G1 X0 Y220 F6000 ; present print
M84 X Y E ; disable motors