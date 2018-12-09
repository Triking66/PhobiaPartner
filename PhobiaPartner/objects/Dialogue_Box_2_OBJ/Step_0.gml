/// @description Insert description here
// You can write your code in this editor
x = view_xport[0];
y = view_xport[0] + view_hport[0] - 200;
time_to_next_text -= 1;
if(time_to_next_text <= 0){
	if(active){
		active = false;
		time_to_next_text = time_between_texts;
	}
	else {
		active = true;
		time_to_next_text = room_speed * 4;
		var t = irandom(2);
		switch(t){
			case 0:
				cur_text = "I can do this! I just need to visualize myself overcoming my fear!"
				break;
			case 1:
				cur_text = "Remember to breathe. Breathing normally will help to keep you calm.";
				break;
			case 2:
				cur_text = "Take it slow. It’s okay to go at your own pace when trying to overcome a phobia or fear.";
				break;
		}
	}
}