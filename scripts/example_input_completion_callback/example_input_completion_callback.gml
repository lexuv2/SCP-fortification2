///@function example_input_callback(_callback_data)
///@desc input text callback
///@param {Array:EImGui_TextCallbackData}
function example_input_completion_callback() {
	var _callback_data = argument[0];
	with (example) {
	  Tabs++;
	  _callback_data[@ EImGui_TextCallbackData.CurPos] = Tabs;
	  _callback_data[@ EImGui_TextCallbackData.Text] = "Example callback. Tabs #: " + string(Tabs);
	}


}
