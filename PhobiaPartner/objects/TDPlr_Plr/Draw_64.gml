/// @description Insert description here
// You can write your code in this editor

if (instance_number(En_Par) <= 0){
	draw_sprite(Level_1_End_Screen, 0, 0, 0);
	draw_text(256, 512, "Score: " + string(points));
}
else {
	for (i=0; i < hp; i++){
		draw_sprite_ext(Heart, 0, i * 66, 0, 0.07, 0.07, 0, c_white, 1);
	}
	draw_text(0, 66, "Number of bugs left: " + string(instance_number(En_Par)));
	draw_text(0, 110, "Score: " + string(points));
}