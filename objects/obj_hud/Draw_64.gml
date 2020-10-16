/// @description Insert description here
// You can write your code in this editor
if global.draw_gui==0 exit
if obj_player.weapon!=-1
{
	draw_set_color(c_white)
draw_sprite(spr_ammo_indicator,0,0,128)
draw_set_font(font_piexl_small)
draw_text(64+16,128+16,obj_player.weapon.mag_ammo)
}





draw_set_alpha(0.6)
var hpx=100;
var hpy=960;
var hpcol = make_color_rgb(115,56,56)
var stamcol = make_color_rgb(21,63,84)
draw_healthbar(hpx,hpy,hpx+sprite_get_width(spr_hp_and_stamina)-2,hpy+30,(obj_player.hp/obj_player.maxhp)*100,c_black,hpcol,hpcol,90,false,false)
draw_sprite_ext(spr_hp_and_stamina,0,100,960,1,1,0,c_white,1)

draw_healthbar(hpx,hpy,hpx+sprite_get_width(spr_hp_and_stamina)-2,hpy+30,(obj_player.hp/obj_player.maxhp)*100,c_black,hpcol,hpcol,90,false,false)
draw_healthbar(hpx,hpy+30,hpx+sprite_get_width(spr_hp_and_stamina)-2,hpy+60-2,(obj_player.stamina/obj_player.maxstamina)*100,c_black,stamcol,stamcol,90,false,false)
draw_sprite_ext(spr_hp_and_stamina,0,100,960,1,1,0,c_white,1)
draw_set_alpha(1)


//draw_sprite_ext(spr_warhead,0,0,128+64,1,1,0,c_white,1)
//draw_text(96,128+64+16,string(obj_nexus.hp)+"%")



var alph = lerp(0,1,obj_player.hp/10)
alph = 1-alph
if obj_player.whiten
draw_sprite_ext(spr_damage,0,0,0,1,1,0,c_white,0.3)
