
if(place_meeting(x, y, Spider_TDFr)){
	audio_play_sound(Spider_Eating, 5, false);
	with(instance_create_layer(x, y, "Instances", Point_Show)){
		num = TDPlr_Plr.point_mult;
	}
	with(TDPlr_Plr){
		points += point_mult;
		point_mult += 1;
		alarm[0] = room_speed * 3;
	}
	instance_destroy();
}