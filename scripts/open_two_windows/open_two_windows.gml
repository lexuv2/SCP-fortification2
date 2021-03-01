function open_two_windows() {
	if (parameter_count() == 3) {


	show_debug_message(parameter_string(0) + " " +
	        parameter_string(1) + " " +
	        chr(34) +parameter_string(2) +chr(34)+ " " +
	        parameter_string(3)  + " -secondary" + " -tertiary")

	    execute_shell( parameter_string(0) + " " +
	        parameter_string(1) + " " +
	        chr(34) +parameter_string(2) +chr(34)+ " " +
	        parameter_string(3)  + " -secondary" + " -tertiary")
		
	    /*execute_shell(parameter_string(0) + " " +
	        parameter_string(1) + " " +
	        parameter_string(2) + " " +
	        parameter_string(3) + " -secondary" + " -tertiary"  + " -aaa" + " -bb"  + " -zz" + " -dd", false, false)
		*/
	    // <primary instance>
	    window_set_caption("P1")
	
		window_set_position(200, 40);
	}


	if (parameter_count() > 6) {
	    // <secondary instance>
	    window_set_caption("P3")
	
		window_set_position(900, 40);
	}
	else if (parameter_count() > 3) {
	    // <secondary instance>
	    window_set_caption("P2")
	
		window_set_position(550, 560);
	}

/* end open_two_windows */
}
