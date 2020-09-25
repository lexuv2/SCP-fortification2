/// @description Insert description here
// You can write your code in this editor
draw_self()
if visible
{

draw_set_font(font_pixel_medium)
if obj_player.weapon
draw_text(x+300,y+25,obj_player.weapon.next_cost)
}