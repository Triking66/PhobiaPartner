x_mov = 0;
y_mov = 0;
if keyboard_check(ord("W")) or keyboard_check(vk_up){
	y_mov -= 1;	
	anim_dir = 3;
}
if keyboard_check(ord("S")) or keyboard_check(vk_down){
	y_mov += 1;	
	anim_dir = 2;
}
if keyboard_check(ord("A")) or keyboard_check(vk_left){
	x_mov -= 1;
	anim_dir = 1;
}
if keyboard_check(ord("D")) or keyboard_check(vk_right){
	x_mov += 1;
	anim_dir = 0;
}
anim_num += anim_spd;

if(abs(x_mov) + abs(y_mov) == 0){
	anim_num = 0;
}
if(anim_num >= 3){
	anim_num = 0;
}
image_index = anim_num + anim_dir * 3

if (y_mov != 0){
	y_mot += y_mov * spd;
	if (abs(y_mot) > max_spd){
		y_mot = sign(y_mot) * max_spd;
	}
}
else if (abs(y_mot) > 0){
	y_mot = 0;
}
if (x_mov != 0){
	x_mot += x_mov * spd;
	if (abs(x_mot) > max_spd){
		x_mot = sign(x_mot) * max_spd;
	}
}
else if (abs(x_mot) > 0){
	x_mot = 0;
}

if(abs(x_mot) + abs(y_mot) > max_spd){
	var tot_spd = abs(x_mot) + abs(y_mot);
	x_mot = x_mot / tot_spd * max_spd * 1.4;
	y_mot = y_mot / tot_spd * max_spd * 1.4;
}

if place_meeting(x + x_mot, y, Wall_Par){
	while !place_meeting(x + sign(x_mot), y, Wall_Par){
		x += sign(x_mot);	
	}
	if(!audio_is_playing(Wall_Or_Furniture_Hit)){
		audio_play_sound(Wall_Or_Furniture_Hit, 5, false);
	}
}
else {
	x += x_mot;
}
if place_meeting(x, y + y_mot, Wall_Par){
	while !place_meeting(x, y + sign(y_mot), Wall_Par){
		y += sign(y_mot);	
	}
	if(!audio_is_playing(Wall_Or_Furniture_Hit)){
		audio_play_sound(Wall_Or_Furniture_Hit, 5, false);
	}
}
else {
	y += y_mot;
}

if keyboard_check_pressed(ord("N")){
	audio_stop_all();
	room_goto(Tower_Lvl);
}