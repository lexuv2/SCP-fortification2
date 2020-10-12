/// @description Insert description here
// You can write your code in this editor
var bygmap = ds_map_create()



var pmap = ds_map_create()
ds_map_add(pmap,"hp",obj_player.hp);
ds_map_add(pmap,"stamina",obj_player.stamina);
ds_map_add(pmap,"x",obj_player.x);
ds_map_add(pmap,"y",obj_player.y);
ds_map_add(pmap,"weapon",obj_player.weapon.object_index);


ds_map_add(bygmap,"player",json_encode(pmap));
ds_map_add(bygmap,"room",room)


var f = json_encode(bygmap);

var filename = "save.json";
var file = file_text_open_write(filename)
file_text_write_string(file,f)
file_text_close(file)
//url_open(filename)

