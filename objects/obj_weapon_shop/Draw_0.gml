/// @description Insert description here
// You can write your code in this editor
if sprite_exists(sprite_index)
draw_self()
draw_text(x,y-10,item.cost)
if draw_tooltip
draw_sprite(spr_key_f,-1,x,y+32)