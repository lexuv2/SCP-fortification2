// Commandes clavier


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

//instance_deactivate_object(obj_light_torch);
instance_deactivate_object(obj_collsision);
instance_deactivate_object(obj_light_parrent);
instance_activate_region(__view_get( e__VW.XView, 0 )-400,__view_get( e__VW.YView, 0 )-400,__view_get( e__VW.WView, 0 )+800,__view_get( e__VW.HView, 0 )+800,true);





// Transform mode

/* */
/*  */
