/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left);

draw_sprite(spr_dialogue_box,0,1920/3,1080/1.3)
if spr_to_draw
draw_sprite_ext(spr_to_draw,0,1920/3,1080/1.3,1.5,1.5,0,c_white,1)
draw_set_font(font)

draw_text_ext_color((1920/3)+100,(1080/1.3)-100,string_to_draw,line_distance,520,text_color,text_color,text_color,text_color,1)


