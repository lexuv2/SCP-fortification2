
// Pop-up menu

/* show_menu_pos() n'est plus disponible dans GameMaker:Studio. */

/*
if mouse_check_button_pressed(mb_right)
{
    ent = show_menu_pos(window_get_x()+mouse_x-view_xview,window_get_y()+mouse_y-view_yview,"Modifier l'heure  (C)|Modifier les FPS  (S)|Afficher le slider horloge  (D)|Afficher la carte  (M)|Afficher l'heure  (T)|Afficher les FPS  (F)",-1)
    switch ent
    {
      case 0: with obj_engine { var time; time=get_integer("Heure:",global.sl_time) if time>=0 && time<24 SL_set_time(time) else show_message("Valeur incorrecte") }; break;
      case 1: room_speed = get_integer("room_speed:",room_speed); break;
      case 2: draw_tods  = !draw_tods; break;
      case 3: { draw_map+=1 if draw_map>1 draw_map=0 }; break;
      case 4: draw_time  = !draw_time; break;
      case 5: draw_fps   = !draw_fps;
    }
}
*/

// Désactivation des instances hors de la view
if room=rmGame
{
//instance_deactivate_object(obj_light_torch);
instance_deactivate_object(obj_light01);
instance_deactivate_object(obj_light02);
instance_activate_region(__view_get( e__VW.XView, 0 )-400,__view_get( e__VW.YView, 0 )-400,__view_get( e__VW.WView, 0 )+800,__view_get( e__VW.HView, 0 )+800,true);
}

//instance_deactivate_object(obj_light_torch);
//instance_deactivate_object(obj_light01);
//instance_deactivate_object(obj_light02);
instance_deactivate_object(obj_vehicle);
instance_deactivate_object(obj_crate01);
instance_deactivate_object(obj_crate02);
instance_deactivate_object(obj_crate03);
instance_deactivate_object(obj_shape01);
instance_deactivate_object(obj_shape03);
instance_deactivate_object(obj_shape04);
instance_deactivate_object(obj_bush01);
//instance_deactivate_object(obj_plant01);
instance_deactivate_object(obj_shadow_mask);
//instance_deactivate_object(obj_fire);
instance_deactivate_object(obj_ball);

     if room = rmGame instance_activate_region(__view_get( e__VW.XView, 0 )-1000,__view_get( e__VW.YView, 0 )-1000,__view_get( e__VW.WView, 0 )+1000,__view_get( e__VW.HView, 0 )+1000,true);
else if room = rmGame instance_activate_region(__view_get( e__VW.XView, 0 )-1000,__view_get( e__VW.YView, 0 )-1000,__view_get( e__VW.WView, 0 )+1000,__view_get( e__VW.HView, 0 )+1000,true); // 80 / 160 par défaut
else instance_activate_region(__view_get( e__VW.XView, 0 )-1000,__view_get( e__VW.YView, 0 )-1000,__view_get( e__VW.WView, 0 )+1000,__view_get( e__VW.HView, 0 )+1000,true);

instance_deactivate_object(obj_plant01);
//instance_deactivate_object(obj_fire);
//instance_deactivate_object(obj_ball);
instance_activate_region(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ),true);
instance_activate_region(__view_get( e__VW.XView, 0 )-1000,__view_get( e__VW.YView, 0 )-1000,__view_get( e__VW.WView, 0 )+1000,__view_get( e__VW.HView, 0 )+1000,true);

// Déplacement des objets avec la souris
if global.dev && grab_toggle
{
    if mouse_check_button_pressed(mb_left)
    {
        grab_active = true;
        grab_id = collision_point(mouse_x,mouse_y,all,true,true);
        
        if instance_exists(grab_id)
        {
            obj_character.torch = !obj_character.torch;
            grab_len = point_distance (mouse_x,mouse_y,grab_id.x,grab_id.y);
            grab_dir = point_direction(mouse_x,mouse_y,grab_id.x,grab_id.y);
        }
    }
    if mouse_check_button_released(mb_left) grab_active = false;
    if grab_active if instance_exists(grab_id) with grab_id { x=mouse_x+lengthdir_x(other.grab_len,other.grab_dir) y=mouse_y+lengthdir_y(other.grab_len,other.grab_dir) };
}

// Transform mode
if global.dev && mouse_check_button_pressed(mb_right) && transform_toggle
{
    change_id = collision_point(mouse_x,mouse_y,all,true,true);
    if instance_exists(change_id) with obj_character { sprite_index=other.change_id.sprite_index image_xscale=other.change_id.image_xscale image_yscale=other.change_id.image_yscale };
}

/* */
/*  */
