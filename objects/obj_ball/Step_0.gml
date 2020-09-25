// Comportement de l'émetteur et variables de création de la particule
if fps!=0
{

if mode=0
{
    timer-=1;
    
    if timer<=0 && x>__view_get( e__VW.XView, 0 ) && x<__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) && y>__view_get( e__VW.YView, 0 ) && y<__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
    {
        timer = 20/(60/fps);
        
        with instance_create(x+random(2)-1,y+random(2)-1,obj_ball)
        {
            image_xscale = 1 + random(0.3);
            image_yscale = image_xscale;
            image_angle  = random(360);
            image_alpha  = 0.9 + random(0.3);
            direction    = other.dir - 10 + random(20);
            mode = 1;
            varspeed = 0.5 + random(1);
            //varscale = 0.001 + random(0.005); // Détermine le taux de variation du scale de la particule
            varangle = random(0.5) - 0.25;      // Détermine la direction et vitesse de rotation de la particule
            varalpha = 0.001 + random(0.002);   // Détermine le taux de variation de l'alpha de la particule
        }
    }
}

// Comportement de la particule
if mode=1
{
    speed        =  varspeed*(60/fps);
    //image_xscale += varscale*(60/fps);
    //image_yscale =  image_xscale;
    image_angle  += varangle*(60/fps);
    image_alpha  -= varalpha*(60/fps);
    
    if image_alpha<=0 instance_destroy();
}

}

