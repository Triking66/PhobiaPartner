
x += x_mov;
y += y_mov;

cur_x += x_mov;
cur_y += y_mov;

if abs(cur_x) >= x_dist{
	x_mov *= -1;
	cur_x = 0;
}

if abs(cur_y) >= y_dist{
	y_mov *= -1;
	cur_y = 0;
}