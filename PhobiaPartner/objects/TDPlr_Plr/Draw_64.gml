/// @description Insert description here
// You can write your code in this editor

if (instance_number(En_Par) <= 0){
	draw_sprite(SpiderVictory_Spr, 0, 0, 0)
}
else {
	for (i=0; i < hp; i++){
		draw_sprite(FullHeart_Spr, 0, i * 66, 0);
	}
	draw_text(0, 66, "Number of bugs left: " + string(instance_number(En_Par)));
}