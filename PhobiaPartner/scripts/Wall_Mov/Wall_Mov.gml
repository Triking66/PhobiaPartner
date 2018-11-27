



var inst;

inst = instance_place(x + x_mov, y, PlatPlr_Plr1)
if inst != noone {
	inst.x += x_mov;
}

x += x_mov;
y += y_mov;

cur_x += x_mov;
cur_y += y_mov;

if abs(cur_x) >= (x_dist * dist_mult){
	x_mov *= -1;
	cur_x = 0;
	image_xscale = -image_xscale;
}

if abs(cur_y) >= (y_dist * dist_mult){
	y_mov *= -1;
	cur_y = 0;
}