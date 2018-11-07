/// @description Insert description here
// You can write your code in this editor
if (abs(TDPlr_Plr.x - x) + abs(TDPlr_Plr.y - y) < 300){
	if(!near_plr){
		near_plr = true;
		audio_play_sound(Spider_Idle, 3, true);
		time_to_random = irandom(60) + 30;
	}
}
else {
	if(near_plr){
		near_plr = false;
		audio_stop_sound(Spider_Idle);
		time_to_random = 0;
	}
}

if(near_plr){
	time_to_random -= 1;
	if(time_to_random <= 0){
		time_to_random = irandom(60) + 30;
		var s = irandom(4);
		switch(s){
			case 0:
				audio_play_sound(Spider_01, 5, false);
				break;
			case 1:
				audio_play_sound(Spider_02, 5, false);
				break;
			case 2:
				audio_play_sound(Spider_03, 5, false);
				break;
			case 3:
				audio_play_sound(Spider_04, 5, false);
				break;
		}
	}
}