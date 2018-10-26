/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(vk_up)){
	y -= 9;
}
if (keyboard_check(vk_down)){
	y += 9;
}
if y < 0 { y = 0; }
if y > room_height { y = room_height; }