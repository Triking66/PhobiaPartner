if place_meeting(x, y, En_Par){
	if (invincible <= 0){
		hp -= 1;
		invincible = inv_frm;
	}
}
if invincible > 0 {
	invincible -= 1;
	if (invincible > 0){
		image_alpha = invincible % 2;
	}
	else {
		image_alpha = 1;
	}
}