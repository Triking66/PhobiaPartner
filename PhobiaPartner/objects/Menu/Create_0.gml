/// @description Insert description here
// You can write your code in this editor
display_set_gui_size(1920,1080);
audio_play_sound(Main_Menu_Song_zombiemusic__happy_horror, 1, true);

y_select = 0;
y_pos = 0;
text[0] = "New Game";
text[1] = "How To!";
text[2] = "Credits";
text[3] = "Exit Game";
y_max = array_length_1d(text)-1;

draw_set_color(c_white);
