/// @description Insert description here
// You can write your code in this editor
string_to_draw=""
draw_len = 1
text_len = string_length(text)
alarm_set(3,draw_speed)
alarm_set(5,can_skip_after)
can_skip = false

draw_set_font(font)
if automatic_line_distance
line_distance=string_height(text)

if in_sequence
seq = sequence_instance.elementID
else seq =-1