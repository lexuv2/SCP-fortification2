/// @description Insert description here
// You can write your code in this editor
var n = ds_list_size(entries)

var up = focus;
var down = n-focus;


if state!=focus
{
	state+=(focus-state)/10
}


var midx = scr_get_screen_x() + 1920/6;
var midy =  state*spacing + scr_get_screen_y()  + 1080/2;


for (var i=0;i <n ;i++)
{
entries[|i].selected=false;
entries[|i].x=midx;
entries[|i].y=midy-((i+1)*spacing);
}

entries[| focus-1].selected=true


