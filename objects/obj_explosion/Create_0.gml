/// @description Insert description here
// You can write your code in this editor

dist = point_distance(x,y,obj_player.x,obj_player.y)
var mult = 10/dist
ex_camera_shake("main",mult,mult,0,5,1,0,0)