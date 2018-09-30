x_mov = 0;
if keyboard_check_pressed(ord("W")) && jumps > 0 {
	jumps -= 1;
	y_mot = 0 - jump_pulse;
}
if keyboard_check(ord("A")) {
	x_mov -= 1;
}
if keyboard_check(ord("D")) {
	x_mov += 1;	
}

if x_mov != 0{
	x_mot += x_mov;
	if abs(x_mot) > max_spd{
		x_mot = sign(x_mot) * max_spd;	
	}
}
else {
	x_mot -= sign(x_mot);	
}

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

if place_meeting(x + x_mot, y, Wall_Stc){
	while !place_meeting(x + sign(x_mot), y, Wall_Stc){
		x += sign(x_mot);
	}
	x_mot = 0;
}
else {
	x += x_mot;
}

if place_meeting(x, y + y_mot, Wall_Stc){
	while !place_meeting(x, y + sign(y_mot), Wall_Stc){
		y += sign(y_mot);	
	}
	if sign(y_mot) > 0 {
		jumps = max_jumps;	
	}
	y_mot = 0;
}
else {
	y += y_mot;
	if(y_mot > 3){
		jumps = 0;
	}
}
