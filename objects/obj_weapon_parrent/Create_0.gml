/// @description Insert description here
// You can write your code in this edi

global.mouse_hover=false;

croshair_sprite = spr_croshair

offset = 0;

rec_anim = false;

sequence = noone;

bought = 0;
in_hands = -1;
can_shoot = 1;
tick=0;
mag_ammo = mag_size;
ID=-1;

reload_progress=0;
semi_can_shoot = true

draw_tooltip=false;
cursor_sprite=croshair_sprite
layer=layer_get_id("layer_weapons")
audio_emitter = audio_emitter_create()