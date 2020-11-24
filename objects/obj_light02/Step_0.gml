// Actualise la position de la lumière
sl_light_x = x;
sl_light_y = y;
if fps!=0 sl_light_angle+=1.92*(60/fps);
if sl_light_angle>=360 sl_light_angle=0;


// Configurations des différentes lumières déterminées par la var 'mode' déclarée dans l'event creation code de l'éditeur de room //
switch mode
{
case 1: // Lumière blanche saccadée
{
sl_light_xscale          = 2;
sl_light_yscale          = sl_light_xscale;
sl_light_color           = c_white;
sl_light_power           = random(1);
sl_light_shadowlength    = 3;
sl_light_shadowfactor    = 1.04;
sl_light_shadowsharpness = 0.3;

if point_distance(x,y,obj_character.x,obj_character.y) >= 185 sl_light_refresh = false;
else sl_light_refresh = true;
} break;

case 2: // Lumière jaune
{
sl_light_xscale          = 2;
sl_light_yscale          = sl_light_xscale;
sl_light_color           = c_yellow;
sl_light_power           = 0.7;
sl_light_shadowfactor    = 1.03;
sl_light_shadowsharpness = 0.2;

if fps!=0 path_speed=0.4*(60/fps);
} break;

case 3: // Lumière orange grésillante fixe
{
sl_light_xscale          = 2.3;
sl_light_yscale          = sl_light_xscale;
sl_light_color           = c_orange;
sl_light_power           = 0.5 + random(0.2);
sl_light_shadowlength    = 3;
sl_light_shadowfactor    = 1.04;
sl_light_shadowsharpness = 0.2;
sl_light_refresh         = false;
} break;

case 4: // Lumière jaune clignotante
{
sl_light_xscale          = 1.33;
sl_light_yscale          = sl_light_xscale;
sl_light_color           = c_yellow;
sl_light_ambientpower    = 0.25;
sl_light_shadowlength    = 3;
sl_light_shadowfactor    = 1.045;
sl_light_shadowsharpness = 0.4;

// Clignotement de la lumière
time += 0.03*60/max(fps,1) if time>=pi*2 time=0;

sl_light_power  = 0.33 + (sin(time)+1) / 3;
sl_light_xscale = 0.8 + 0.7*sl_light_power;
sl_light_yscale = sl_light_xscale;
} break;

case 5: // Lumière rouge/orangé saccadée
{
sl_light_xscale          = 1.86;
sl_light_yscale          = sl_light_xscale;
sl_light_color           = make_color_rgb(255,83,0);
sl_light_power           = 0.8 + random(0.7);
sl_light_shadowlength    = 3;
sl_light_shadowfactor    = 1.045;
sl_light_shadowsharpness = 0.1;
} break;

case 6: // Projecteur vert fixe
{
sl_light_texture         = spr_light02;
sl_light_xscale          = 4;
sl_light_yscale          = sl_light_xscale;
sl_light_color           = make_color_rgb(149,219,79);
sl_light_power           = 0.8;
sl_light_ambientpower    = 0.25;
sl_light_shadowlength    = 2;
sl_light_shadowfactor    = 1.02;
sl_light_shadowsharpness = 0.28;
sl_light_refresh         = false;
} break;

case 7: // Lumière blanche
{
sl_light_xscale          = 2.55;
sl_light_yscale          = sl_light_xscale;
sl_light_color           = make_color_rgb(255,255,230);
sl_light_power           = 0.9;
sl_light_ambientpower    = 0.3;
sl_light_shadowlength    = 2;
sl_light_shadowfactor    = 1.025;
sl_light_shadowsharpness = 0.2;

// Mouvement
time += 0.035*60/max(fps,1) if time>=pi*2 time=0;
l  = sin(time)*22;
d += 0.4*60/max(fps,1) if d>=360 d=0;

x = xstart + lengthdir_x(l,d);
y = ystart + lengthdir_y(l,d);
} break;

case 8: // Projecteur blanchâtre
{
sl_light_texture         = spr_light02;
sl_light_xscale          = 4;
sl_light_yscale          = sl_light_xscale;
sl_light_color           = make_color_rgb(255,245,176);
sl_light_power           = 0.7 + random(0.1);
sl_light_ambientpower    = 0.15;
sl_light_shadowlength    = 2;
sl_light_shadowfactor    = 1.025;
sl_light_shadowsharpness = 0.27;

// Rotation du projecteur
if sl_light_angle>60 increment=-0.08 else if sl_light_angle<30 increment=0.08;
if fps!=0 sl_light_angle+=increment*(60/fps);
} break;

case 9: // Feu
{
sl_light_x               = x - 0.8 + random(1.6);
sl_light_y               = y - 0.8 + random(1.6);
sl_light_xscale          = 2;
sl_light_yscale          = sl_light_xscale;
sl_light_color           = make_color_rgb(245+random(10),90+random(5),random(5));
sl_light_power           = 0.17 + (0.63+random(0.2)) * (-global.sl_ambient_light+1);
sl_light_ambientpower    = 0.2;
sl_light_shadowlength    = 3;
sl_light_shadowfactor    = 1.032;
sl_light_shadowsharpness = 0.1;
} break;

case 10: // Gyrophare rouge
{
sl_light_texture         = spr_light03;
sl_light_xscale          = 3.5;
sl_light_yscale          = sl_light_xscale;
sl_light_power           = 1;
sl_light_shadowlength    = 3;
sl_light_shadowfactor    = 1.032;
sl_light_shadowsharpness = 0.2;

// Rotation de la lumière
if fps!=0 sl_light_angle+=1.7*(60/fps);
if sl_light_angle>=360 sl_light_angle=0;

if __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )<y sl_light_active=false else sl_light_active=true;
} break;

case 11: // Lumière blanche 2
{
sl_light_texture         = spr_light02;
sl_light_xscale          = 3.45;
sl_light_yscale          = sl_light_xscale;
sl_light_angle           = 270;
sl_light_color           = c_white;
sl_light_power           = 1;
sl_light_ambientpower    = 0.2;
sl_light_shadowlength    = 3;
sl_light_shadowfactor    = 1.02;
sl_light_shadowsharpness = 0.2;
} break;

case 12: // Gyrophare jaune/orangé
{
sl_light_texture         = spr_light03;
sl_light_xscale          = 2.6;
sl_light_yscale          = sl_light_xscale;
sl_light_color           = make_color_rgb(255,172,0);
sl_light_power           = 0.73;
sl_light_shadowlength    = 3;
sl_light_shadowfactor    = 1.05;
sl_light_shadowsharpness = 0.23;

// Rotation de la lumière
if fps!=0 sl_light_angle+=1.92*(60/fps);
if sl_light_angle>=360 sl_light_angle=0;
} break;

case 13: // Lumière rouge fixe 1
{
sl_light_shadowlength = 4;
sl_light_refresh      = false;
} break;

case 14: // Lumière rouge fixe 2
{
sl_light_xscale          = 1.86;
sl_light_yscale          = sl_light_xscale;
sl_light_power           = 0.8;
sl_light_refresh         = false;
} break;

case 15: // Lumière blanche fixe
{
sl_light_xscale          = 2.66;
sl_light_yscale          = sl_light_xscale;
sl_light_color           = c_white;
sl_light_power           = 0.7;
sl_light_ambientpower    = 0.3;
sl_light_shadowlength    = 2;
sl_light_shadowfactor    = 1.025;
sl_light_shadowsharpness = 0.18;
sl_light_refresh         = false;
} break;

case 16: // Lumière mouvante orange
{
sl_light_power           = 0.65 + random(0.3);
sl_light_shadowlength    = 3;
sl_light_shadowfactor    = 1.045;
sl_light_shadowsharpness = 0.45;

if fps!=0 path_speed=2*(60/fps);
} break;

case 17: // Lumière blanc/bleu fixe
{
sl_light_xscale          = 2.92;
sl_light_yscale          = sl_light_xscale;
sl_light_color           = make_color_rgb(210,245,255);
sl_light_power           = 0.5;
sl_light_ambientpower    = 0.25;
sl_light_shadowlength    = 2;
sl_light_shadowfactor    = 1.025;
sl_light_shadowsharpness = 0.15;
sl_light_refresh         = false;
} break;

case 18: // Phare de véhicule
{
if global.sl_ambient_light < 0.5
{
sl_light_active          = true;
sl_light_texture         = spr_light05;
sl_light_xscale          = 3.2;
sl_light_yscale          = sl_light_xscale;
sl_light_color           = make_color_rgb(255,245,220);
sl_light_power           = 0.7;
sl_light_ambientpower    = 0.15;
sl_light_shadowlength    = 2;
sl_light_shadowfactor    = 1.025;
sl_light_shadowsharpness = 0.17;
}
else sl_light_active     = false;
} break;

case 19: // Lumière jaune fixe
{
sl_light_power           = 0.9;
sl_light_ambientpower    = 0.05;
sl_light_color           = c_yellow;
sl_light_shadowsharpness = 0.18;
sl_light_shadowfactor    = 1.02;
sl_light_xscale          = 2.66;
sl_light_yscale          = sl_light_xscale;
sl_light_refresh         = false;
} break;

case 20: // Lumière blanche fixe
{
sl_light_power           = 0.88;
sl_light_ambientpower    = 0.1;
sl_light_color           = c_white;
sl_light_shadowsharpness = 0.1;
sl_light_shadowfactor    = 1.02;
sl_light_xscale          = 3.2;
sl_light_yscale          = sl_light_xscale;
sl_light_shadowlength    = 2;
sl_light_refresh         = false;
} break;

case 21: // Lumière verdâtre fixe
{
sl_light_power           = 1;
sl_light_ambientpower    = 0.1;
sl_light_color           = make_color_rgb(230,255,150);
sl_light_shadowsharpness = 0.14;
sl_light_shadowfactor    = 1.02;
sl_light_xscale          = 3;
sl_light_yscale          = sl_light_xscale;
sl_light_shadowlength    = 3;
sl_light_refresh         = false;
} break;

case 22: // Lumière bleutée fixe
{
sl_light_power           = 0.8;
sl_light_ambientpower    = 0;
sl_light_color           = make_color_rgb(190,190,255);
sl_light_shadowsharpness = 0.15;
sl_light_shadowfactor    = 1.02;
sl_light_xscale          = 3;
sl_light_yscale          = sl_light_xscale;
sl_light_refresh         = false;
} break;

case 23: // Lumière mouvante blanche
{
sl_light_xscale          = 2.2;
sl_light_yscale          = 2.2;
sl_light_color           = c_white;
sl_light_power           = 0.8;
sl_light_shadowsharpness = 0.33;

if fps!=0 path_speed=2*(60/fps);
}
}

