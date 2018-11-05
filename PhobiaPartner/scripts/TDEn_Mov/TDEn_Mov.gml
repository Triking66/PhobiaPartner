if keyboard_check_pressed(ord("P")){
	show_message("Player x: " + string(TDPlr_Plr.x) + "\n" + 
	"Player y: " + string(TDPlr_Plr.y) + "\n" + 
	"Enemy x: " + string(x) + "\n" + 
	"Enemy y: " + string(y));
}
if(abs(TDPlr_Plr.x - x) + abs(TDPlr_Plr.y - y) < view){
	y_mov = 0;
	x_mov = 0;
	if TDPlr_Plr.y < y {
		y_mov -= 1;
	}
	if TDPlr_Plr.y > y {
		y_mov += 1;
	}
	if TDPlr_Plr.x < x {
		x_mov -= 1;
	}
	if TDPlr_Plr.x > x {
		x_mov += 1
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
	
	if place_meeting(x + x_mot, y, Wall_Par){
		while !place_meeting(x + sign(x_mot), y, Wall_Par){
			x += sign(x_mot);	
		}
	}
	else {
		x += x_mot;
	}
	if place_meeting(x, y + y_mot, Wall_Par){
		while !place_meeting(x, y + sign(y_mot), Wall_Par){
			y += sign(y_mot);	
		}
	}
	else {
		y += y_mot;
	}
}