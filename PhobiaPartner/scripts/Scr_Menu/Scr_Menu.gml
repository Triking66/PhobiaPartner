switch (argument0) {
	//case 0: scr_c(); break; //Continue
	case 0: room_goto(Lvl_Picker); break; //New Game
	case 1: room_goto(Rm_Instructions); break; //How To
	case 2: room_goto(Rm_Credits); break; //Credits
	case 3: game_end(); break; //Exit
}
