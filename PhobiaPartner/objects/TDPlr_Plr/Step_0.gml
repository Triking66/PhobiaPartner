/// @description Insert description here
// You can write your code in this editor

Plr_En_Col(); // Check collisions with enemies

TDPlr_Mov(); // Move

if (instance_number(En_Par) <= 0){
	if(keyboard_check_pressed(vk_enter)){
		audio_stop_all();
		room_goto(Rm_Menu);
	}
}