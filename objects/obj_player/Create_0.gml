/// @description 

event_inherited()

moveSpeed = 8;
sprintSpeed = 12;
lastsprinted = 0;
is_local = true;
playerID = 0;
weapon=-1;
hp=oController.start_hp+math_get_epsilon();
hp-=math_get_epsilon()
hp = 10
player_name = "JD";
glowsticks = 5;
flares = 5;
is_player_initalized = 0;

player_rot = 0;
flash_inst = noone

tick_couter=0;

maxhp = hp;
burning = 0;

maxstamina = 300;
stamina = 300;

emmiter = part_emitter_create(global.part_system)

alarm_set(0,90)

instance_create_layer(0,0,"instances",obj_card_inventory)

audio_listener_orientation(0,0,-1,0,1,0)

obj_camera.target=id;
whiten=false;
hp_before=hp;
alarm_set(1,60)



can_get_acid = 0;