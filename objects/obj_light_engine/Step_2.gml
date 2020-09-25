// Modifie l'heure selon une valeur donnée par le joueur
if keyboard_check_pressed(ord("C"))
{
    var time;
    time = get_integer("Heure:",global.sl_time);
    
    if time>=0 && time<24 SL_set_time(time) else show_message("Valeur incorrecte");
}

sl_timespeed = (1/60)/(room_speed/3); // Vitesse d'avancement de l'heure
sl_ambientshadows_alpha = -global.sl_ambient_light+1.77; // Modification de l'alpha des ombres ambiantes en fonction de la luminosité ambiante

// Calcul de l'ensemble des ombres et lumières
SL_engine_render();

