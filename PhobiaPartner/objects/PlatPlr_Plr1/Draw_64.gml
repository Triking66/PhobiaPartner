/// @description Insert description here
// You can write your code in this editor
if(!level_end){
	for (i=0; i < hp; i++){
		draw_sprite_ext(Heart, 0, i * 66, 0, 0.07, 0.07, 0, c_white, 1);
	}
	draw_sprite_ext(Danger_Zone_SPR, 0, 0, -view_yport[0], 1, 1, 0, c_white, cur_safe/safe_time);
}