/// @description Insert description here
// You can write your code in this editor
y_select = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
y_temp = y_pos
if y_select != 0 {
	y_pos = clamp(y_pos+y_select,0,y_max);
	if y_pos == y_temp { //didn't move
		//audio_play_sound(snd_error,10,0);
	} else { //did move
		//audio_play_sound(snd_switch,10,0);
		//instance_create_depth(240,72+y_pos*38,10,obj_spark);
	}
}

//interaction
if keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space) {
	Scr_Lvl_Picker(y_pos);
}
