x_mov = 0;
y_mov = 0;

y_mov -= .1;	
anim_dir = 3;
anim_num += anim_spd;
anim_spd=.18;

if (keyboard_check(ord("S")) or keyboard_check(vk_down)) and flash <= 0{
	anim_spd=.1
	y_mov += 0.2;	
	anim_dir = 2;
	anim_num += anim_spd;
}
if keyboard_check(ord("A")) or keyboard_check(vk_left){
	anim_spd=.12
	x_mov -= 1;
	anim_dir = 1;
	anim_num += anim_spd;
}
if keyboard_check(ord("D")) or keyboard_check(vk_right){
	anim_spd=.12
	x_mov += 1;
	anim_dir = 0;
	anim_num += anim_spd;
}

if(abs(x_mov) + abs(y_mov) == 0){
	anim_num = 0;
}
if(anim_num >= 3){
	anim_num = 0;
}
image_index = anim_num + anim_dir * 3

if (y_mov != 0){
	y_mot += y_mov * spd;
	if (abs(y_mot) > max_fwd){
		y_mot = sign(y_mot) * max_spd;
	}
	if (y_mot > -min_fwd and flash <= 0){
		y_mot = -min_fwd;
	}
}
else if (abs(y_mot) > 0){
	y_mot -= sign(y_mot);
}
if (x_mov != 0){
	x_mot += x_mov * spd;
	if (abs(x_mot) > max_spd){
		x_mot = sign(x_mot) * max_spd;
	}
}
else if (abs(x_mot) > 0){
	x_mot -= sign(x_mot);
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
	if(flash <= 0){
		y_mot = bounce;
		flash = flash_time;
		hp -= 1;
		if(hp <= 0){
			audio_stop_all();
			room_goto(Rm_Menu);
		}
	}
}
else {
	y += y_mot;
}

if flash > 0 {
	flash -= 1;
	if (flash > 0){
		image_alpha = flash % 2;
	}
	else {
		image_alpha = 1;
	}
}

if x < low_x or x > high_x {
	cur_safe += 1;
	if !audio_is_playing(heavy_breathing) {
		audio_play_sound(heavy_breathing, 2, true);
	}
}
else {
	if(audio_is_playing(heavy_breathing)){
		audio_stop_sound(heavy_breathing);
	}
	cur_safe = 0
}