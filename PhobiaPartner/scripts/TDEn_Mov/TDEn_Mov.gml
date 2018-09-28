if keyboard_check_pressed(ord("P")){
	show_message("Player x: " + string(TDPlr_Plr.x) + "\n" + 
	"Player y: " + string(TDPlr_Plr.y) + "\n" + 
	"Enemy x: " + string(x) + "\n" + 
	"Enemy y: " + string(y));
}
if(abs(TDPlr_Plr.x - x) + abs(TDPlr_Plr.y - y) < view){
	y_mov = 0;
	x_mov = 0;
	if TDPlr_Plr.y <= y {
		y_mov -= 1;
	}
	if TDPlr_Plr.y > y {
		y_mov += 1;
	}
	if TDPlr_Plr.x <= x {
		x_mov -= 1;
	}
	if TDPlr_Plr.x > x {
		x_mov += 1
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
}