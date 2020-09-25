var c1, c2;

// Affichage du slider jour/nuit
if draw_tods && room!=rmGame
{
tods_w  = __view_get( e__VW.WView, 0 )*0.7;
tods_x  = __view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )-tods_w)/2;
tods_y  = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-30;
tods_cx = tods_x+(global.sl_time/24)*tods_w;

if !mouse_check_button(mb_left) tods_g = false;
else if mouse_check_button(mb_left) && point_distance(tods_cx-16,tods_y,mouse_x,mouse_y)<45 tods_g = true;

if tods_g
{
  tods_cx = mouse_x;
  if mouse_x<tods_x tods_cx=tods_x else if mouse_x>tods_x+tods_w tods_cx=tods_x+tods_w;
  with obj_engine SL_set_time((other.tods_cx-other.tods_x)/other.tods_w*24);
}

draw_set_blend_mode(bm_one);
draw_sprite_ext(spr_tods,0,tods_x,tods_y,tods_w/32,1,0,c_white,1);
draw_sprite_ext(spr_tods,1,tods_cx-16,tods_y,1,1,0,c_white,1);
draw_sprite_ext(spr_tods,2,tods_x-30,tods_y,1,1,0,c_white,1);
draw_sprite_ext(spr_tods,3,tods_x+tods_w,tods_y,1,1,0,c_white,1);
draw_set_blend_mode(bm_normal);

//draw_line(tods_x,tods_y,tods_x+tods_w,tods_y);
//draw_line(tods_cx,tods_y-5,tods_cx,tods_y+5);
}


// Affichage de la minimap


// Affichage du compteur de FPS



draw_set_blend_mode(bm_add);

draw_set_blend_mode(bm_normal);

