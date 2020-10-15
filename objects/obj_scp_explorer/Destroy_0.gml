/// @description Insert description here
// You can write your code in this editor
var n = ds_list_size(entries)



for (var i=0;i <n ;i++)
{
instance_destroy(entries[|i].id);
}
ds_list_destroy(entries)