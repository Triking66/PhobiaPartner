x_mov = 0;
y_mov = 0;
if keyboard_check(ord("W")){
	y_mov -= 1;	
}
if keyboard_check(ord("S")){
	y_mov += 1;	
}
if keyboard_check(ord("A")){
	x_mov -= 1;
}
if keyboard_check(ord("D")){
	x_mov += 1;
}

if (y_mov != 0){
	y_mot += y_mov;
	if (abs(y_mot) > max_spd){
		y_mot = sign(y_mot) * max_spd;
	}
}
else if (abs(y_mot) > 0){
	y_mot -= sign(y_mot);
}
if (x_mov != 0){
	x_mot += x_mov;
	if (abs(x_mot) > max_spd){
		x_mot = sign(x_mot) * max_spd;
	}
}
else if (abs(x_mot) > 0){
	x_mot -= sign(x_mot);
}

if place_meeting(x + x_mot, y, Wall_Stc){
	while !place_meeting(x + sign(x_mot), y, Wall_Stc){
		x += sign(x_mot);	
	}
}
else {
	x += x_mot;
}
if place_meeting(x, y + y_mot, Wall_Stc){
	while !place_meeting(x, y + sign(y_mot), Wall_Stc){
		y += sign(y_mot);	
	}
}
else {
	y += y_mot;
}