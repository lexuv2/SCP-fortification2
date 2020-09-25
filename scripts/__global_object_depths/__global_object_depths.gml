function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // obj_block
	global.__objectDepths[1] = 10; // obj_vehicle
	global.__objectDepths[2] = 10; // obj_crate01
	global.__objectDepths[3] = 20; // obj_crate02
	global.__objectDepths[4] = 30; // obj_crate03
	global.__objectDepths[5] = 65; // obj_shape01
	global.__objectDepths[6] = 50; // obj_shape03
	global.__objectDepths[7] = 70; // obj_shape04
	global.__objectDepths[8] = 0; // obj_bush01
	global.__objectDepths[9] = 80; // obj_plant01
	global.__objectDepths[10] = 0; // obj_cloud
	global.__objectDepths[11] = 0; // obj_shadow_mask
	global.__objectDepths[12] = -850; // obj_fire
	global.__objectDepths[13] = 0; // obj_ball
	global.__objectDepths[14] = -10; // obj_light_torch
	global.__objectDepths[15] = -1001; // obj_light01
	global.__objectDepths[16] = 0; // obj_light02
	global.__objectDepths[17] = -1500; // obj_control
	global.__objectDepths[18] = -1000; // obj_engine
	global.__objectDepths[19] = 40; // obj_character
	global.__objectDepths[20] = 45; // obj_npc


	global.__objectNames[0] = "obj_block";
	global.__objectNames[1] = "obj_vehicle";
	global.__objectNames[2] = "obj_crate01";
	global.__objectNames[3] = "obj_crate02";
	global.__objectNames[4] = "obj_crate03";
	global.__objectNames[5] = "obj_shape01";
	global.__objectNames[6] = "obj_shape03";
	global.__objectNames[7] = "obj_shape04";
	global.__objectNames[8] = "obj_bush01";
	global.__objectNames[9] = "obj_plant01";
	global.__objectNames[10] = "obj_cloud";
	global.__objectNames[11] = "obj_shadow_mask";
	global.__objectNames[12] = "obj_fire";
	global.__objectNames[13] = "obj_ball";
	global.__objectNames[14] = "obj_light_torch";
	global.__objectNames[15] = "obj_light01";
	global.__objectNames[16] = "obj_light02";
	global.__objectNames[17] = "obj_control";
	global.__objectNames[18] = "obj_engine";
	global.__objectNames[19] = "obj_character";
	global.__objectNames[20] = "obj_npc";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
