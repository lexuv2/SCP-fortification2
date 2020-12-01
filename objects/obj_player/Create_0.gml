/// @description 

event_inherited()

moveSpeed = 8;
sprintSpeed = 12;
lastsprinted = 0;
is_local = true;
playerID = -1;
weapon=-1;
hp=oController.start_hp+math_get_epsilon();
hp-=math_get_epsilon()
hp = 10
player_name = "JD";
glowsticks = 5;
is_player_initalized = 0;

maxhp = hp;
burning = 0;

maxstamina = 300;
stamina = 300;

emmiter = part_emitter_create(global.part_system)

alarm_set(0,90)

instance_create_layer(0,0,"instances",obj_card_inventory)


ex_camera_create("main", 0, 0, 0, 1920, 1080, 0, 0, 0, 100, id, true, 0, 0, room_width, room_height);
camera_target=id;
whiten=false;
hp_before=hp;
alarm_set(1,60)



can_get_acid = 0;