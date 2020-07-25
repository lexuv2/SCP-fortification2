/// @description Insert description here
// You can write your code in this editor
game_tick++;
if (game_tick>=60)
{
sec++;
game_tick=0;
}

if (sec>=60)
{
minute++;
minute=0;
}

if (minute>=60)
{
hour++;
hour=0;
}

roundtime = string(sec)+":"+string(minute)+":"+string(hour)