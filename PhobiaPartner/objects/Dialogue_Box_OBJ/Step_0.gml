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
				cur_text = "Mosquitos can give people diseases including Zika virus, West Nile virus, \n" +
							"Chikungunya virus, dengue, and malaria."
				break;
			case 1:
				cur_text = "Cockroaches can cause food poisoning, salmonella, \n" +
							"and even typhoid fever when they contaminate food.";
				break;
			case 2:
				cur_text = "Ticks can make people really sick and even give you Lyme disease, babesiosis, \n" +
							"ehrlichiosis, Rocky Mountain Spotted Fever, anaplasmosis, \n" + 
							"Southern Tick-Associated Rash Illness, Tick-Borne Relapsing Fever,  tularemia, and more. ";
				break;
		}
	}
}