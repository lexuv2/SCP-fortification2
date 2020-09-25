image_speed  = 0;
image_index  = round(random(image_number-1));
image_angle  = 20 - random(40);
image_xscale = 0.9 + random(0.1);
image_yscale = image_xscale;

if room != room2
{
    t = random(pi*2); // Temps
    v = 0.027 + random(0.005); // Valeur de mouvement
    d = random(360); // Direction
}

