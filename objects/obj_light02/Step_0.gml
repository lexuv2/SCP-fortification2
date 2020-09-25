// Configurations des différentes lumières déterminées par la var 'mode' déclarée dans l'event creation code de l'éditeur de room //

switch mode
{
case 0:
{
    sprite = spr_light01; // Lumière orange
    scale  = 1;
    angle  = 0;
    color  = c_orange;
    alpha  = 1;
} break;

case 1:
{
    sprite = spr_light04; // Murale blanche 1
    scale  = 0.7;
    angle  = 270;
    color  = make_color_rgb(221,243,249);
    alpha  = 0.6;
} break;

case 2:
{
    sprite = spr_light04; // Murale blanche 2
    scale  = 0.7;
    angle  = 90;
    color  = make_color_rgb(221,243,249);
    alpha  = 0.6;
} break;

case 3:
{
    sprite = spr_light04; // Murale blanche 3
    scale  = 0.7;
    angle  = 90;
    color  = make_color_rgb(203,236,245);
    alpha  = 0.5 + random(0.1);
} break;

case 4:
{
    sprite = spr_light04; // Murale jaune
    scale  = 0.7;
    angle  = 0;
    color  = make_color_rgb(255,189,51);
    alpha  = 0.6;
} break;

case 5:
{
    sprite = spr_light04; // Murale rouge
    scale  = 0.7;
    angle  = 90;
    color  = make_color_rgb(255,20,4);
    alpha  = 0.4;
} break;

case 6: // Faible lumière blanche
{
    sprite = spr_light01;
    scale  = 3.7;
    angle  = 0;
    color  = c_white;
    alpha  = 0.15;
} break;

case 7: // Murale orange
{
    sprite = spr_light04;
    scale  = 0.85;
    angle  = 270;
    color  = c_orange;
    alpha  = 0.7;
} break;

case 8: // Murale orange 2
{
    sprite = spr_light04;
    scale  = 0.83;
    angle  = 270;
    color  = make_color_rgb(255,176,60);
    alpha  = 0.5 + random(0.1);
}

}

SL_draw_sprite_light(sprite,0,x,y,scale,scale,angle,color,alpha);

