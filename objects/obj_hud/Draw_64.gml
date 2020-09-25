/// @description Insert description here
// You can write your code in this editor

if obj_player.weapon!=-1
{
	draw_set_color(c_white)
draw_sprite(spr_ammo_indicator,0,0,128)
draw_set_font(font_piexl_small)
draw_text(64+16,128+16,obj_player.weapon.mag_ammo)
}


draw_sprite_ext(spr_peanut,0,32,32,1,1,0,c_white,1)
draw_text(96,16,int64(oController.money))

draw_sprite_ext(hp_indicaator,0,0,64,1,1,0,c_white,1)
draw_text(96,64+16,obj_player.hp)


draw_sprite_ext(spr_warhead,0,0,128+64,1,1,0,c_white,1)
draw_text(96,128+64+16,string(obj_nexus.hp)+"%")



var alph = lerp(0,1,obj_player.hp/10)
alph = 1-alph
if obj_player.whiten
draw_sprite_ext(spr_damage,0,0,0,1,1,0,c_white,0.3)
