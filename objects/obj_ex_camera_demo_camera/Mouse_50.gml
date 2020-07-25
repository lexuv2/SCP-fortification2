/// @description  Test Effects (Mobile)
/// @param Mobile

// change this to test the effect on mobile
var _test_effect = 1;
    // 0 = flash
    // 1 = scroll
    // 2 = shake
    // 3 = tilt
    // 4 = flash
    // 5 = fade
    // 6 = zoom out
    // 7 = zoom in

// flash effect
if (_test_effect == 0) {
    ex_camera_flash("main", 0.9, 20, scr_ease_out_sine, c_white, bm_add);
}

// scroll effect
if (_test_effect == 1 and _follow_object == true) {
    _follow_object = false;
    
    //ex_camera_set_bounds("main", 0, 0, room_width, room_height); // how to release bounds if necessary
    
    ex_camera_scroll_to_object("main", inst_CA099180, 24, scr_ease_inout_sine, true, scr_test_focus_player);
    //ex_camera_scroll_to_point("main", 2000, 2000, 24, scr_ease_inout_sine, true, scr_test_focus_player);
    //ex_camera_scroll_by("main", 32, 32, 24, scr_ease_inout_sine, scr_test_focus_player);
}

// shake effect
if (_test_effect == 2) {
    ex_camera_shake("main", 8, 8, 0, 12, scr_ease_out_sine);
}

// tilt effect
if (_test_effect == 3) {
    ex_camera_tilt("main", 10, 32, scr_ease_inout_back);
}

// flash effect
if (_test_effect == 4) {
   ex_camera_flash("main", 0.9, 20, scr_ease_out_sine, c_white, bm_add);
}

// fade effect
if (_test_effect == 5) {
   ex_camera_fade("main", 1, 30, scr_ease_inout_sine, c_black);
}

// zoom out (-)
if (_test_effect == 6) {
    ex_camera_zoom("main", 120, 12, scr_ease_inout_sine);
}

// zoom in (+)
if (_test_effect == 7) {
    ex_camera_zoom("main", 60, 12, scr_ease_inout_sine);
}


