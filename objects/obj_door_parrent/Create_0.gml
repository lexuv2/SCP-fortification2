/// @description Insert description here
// You can write your code in this editor
outline_init()
coll = instance_create_layer(x+12,y,"collisions",obj_collsision)
shd = instance_create_layer(x+12,y,"shadow_masks",obj_map_shadow_mask)


actvation_distance = 250;

shd.image_xscale=2;
shd.image_yscale=0.5;
//coll.image_xscale=0.5;
coll.image_yscale=1.5;
//shd.image_xscale=0.5;


sprite_index = frame_sprite
enum door_state {
open,
closed,
opening,
closing,
reading_card,
   }
   
   
   seq=0;
   state = door_state.closed
  frame=0;
   open_time=60;
 xoff = 0