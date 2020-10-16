/// @description Insert description here
// You can write your code in this editor
surf = surface_create(room_width, room_height);
surface_set_target(surf);

draw_tilemap(layer_tilemap_get_id("Tiles_1"),0,0)
draw_tilemap(layer_tilemap_get_id("Tiles_floor"),0,0)

surface_reset_target();

var spr = sprite_create_from_surface(surf,0,0,surface_get_width(surf),surface_get_height(surf),false,true,0,0)
sprite_save(spr,0, "papaj.png");
show_message("Scrensoght")