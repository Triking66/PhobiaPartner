/// @description Insert description here
// You can write your code in this editor
x_mov = 0;
if keyboard_check_pressed(ord("W")) && jumps > 0 {
	jumps -= 1;
	y_mot -= jump_pulse;
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

if y_mot < (0 - jump_pulse){
	y_mot = 0 - jump_pulse;	
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
}