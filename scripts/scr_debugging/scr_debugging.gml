// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


/// @function                 log(message);
/// @param {string}  message  The message to show
/// @description              Show a message whenever the function is called.

function log(message){
	while (ds_list_size(obj_logger.loglist) > 30)
	{
		ds_list_delete(obj_logger.loglist ,0);
	}
	
	var siz = ds_list_size(obj_logger.loglist)
	if ( obj_logger.loglist[| siz-1]!=message )
	ds_list_add(obj_logger.loglist , message)
	
}