/// @description Insert description here
// You can write your code in this editor
var n = ds_list_size(entries)

var up = focus;
var down = n-focus;

var midx = scr_get_screen_x() + 1920/6;
var midy =  scr_get_screen_y()  + 1080/2;

if true
{
var ii=0
for (var i=focus-1;i >=0 ;i--)
{
entries[|i].selected=false;
entries[|i].x=midx;
entries[|i].y=midy-(ii*spacing);
ii++;
}

ii=0;
for (var i=focus-1;i <n ;i++)
{
entries[|i].selected=false;
entries[|i].x=midx;
entries[|i].y=midy+(ii*spacing);
ii++;
}

entries[| focus-1].x=midx
entries[| focus-1].y=midy
entries[| focus-1].selected=true
}
else
{
	
}