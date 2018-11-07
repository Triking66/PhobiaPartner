switch (argument0) {
	//case 0: scr_c(); break; //Continue
	case 0: audio_stop_all(); room_goto(Lvl_Picker); break; //New Game
	case 1: audio_stop_all(); room_goto(Rm_Instructions); break; //How To
	case 2: audio_stop_all(); room_goto(Rm_Credits); break; //Credits
	case 3: audio_stop_all();  game_end(); break; //Exit
}
