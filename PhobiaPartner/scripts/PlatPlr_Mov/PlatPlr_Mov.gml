x_mov = 0;
if keyboard_check_pressed(ord("W")) && jumps > 0 {
	jumps -= 1;
	y_mot = 0 - jump_pulse;
}
if keyboard_check(ord("A")) {
	x_mov -= 1;
	anim_num += anim_spd;
	anim_left = 1;
}
if keyboard_check(ord("D")) {
	x_mov += 1;
	anim_num += anim_spd;
	anim_left = 0;
}

if x_mov != 0{
	x_mot += x_mov;
	if abs(x_mot) > max_spd{
		x_mot = sign(x_mot) * max_spd;	
	}
}
else {
	x_mot -= sign(x_mot);
	anim_num = 0;
}
if anim_num >= 3{
	anim_num = 0;
}

image_index = anim_num + anim_left * 3
//show_message(string(sprite_index));

y_mot += 1;

if y_mot > term_vel{
	y_mot = term_vel;	
}

var inst;

inst = instance_place(x, y+1, Mov_Wall_Par)
if inst != noone {
	if !place_meeting(x + inst.x_mov, y, Wall_Stc){
		x += inst.x_mov;
	}
	if(inst.y_mov < 0){
		y += inst.y_mov;
	}
}

if place_meeting(x + x_mot, y, Wall_Par){
	while !place_meeting(x + sign(x_mot), y, Wall_Par){
		x += sign(x_mot);
	}
	x_mot = 0;
}
else {
	x += x_mot;
}

if place_meeting(x, y + y_mot, Wall_Par){
	while !place_meeting(x, y + sign(y_mot), Wall_Par){
		y += sign(y_mot);	
	}
	if sign(y_mot) > 0 {
		jumps = max_jumps;	
	}
	inst = instance_place(x, y+1, Wall_Stc)
	if inst != noone {
		safe_x = x;
		safe_y = y;
	}
	y_mot = 0;
}
else {
	y += y_mot;
	if(y_mot > 3){
		jumps = 0;
	}
}

if place_meeting(x, y, Voidbox_Par){
	x = safe_x;
	y = safe_y;
	flash = 16;
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