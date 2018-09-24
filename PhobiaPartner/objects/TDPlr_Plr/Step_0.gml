/// @description Insert description here
// You can write your code in this editor
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

if place_meeting(x + spd * x_mov, y, Wall_Stc){
	while !place_meeting(x + x_mov, y, Wall_Stc){
		x += x_mov;	
	}
}
else {
	x += spd * x_mov;
}
if place_meeting(x, y + spd * y_mov, Wall_Stc){
	while !place_meeting(x, y + y_mov, Wall_Stc){
		y += y_mov;	
	}
}
else {
	y += spd * y_mov;
}
