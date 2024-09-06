/// @description
// You can write your code in this editor

if (room == Level_1 or room == Level_2 or room == Level_3 or room == Level_4)
{
	
if (not starting) and (not ending)
{
	if keyboard_check_pressed(ord("P")) {
		show_debug_message("toggle pause!");
		paused = not paused;
		show_debug_message(paused);
	}
}

if (ended) and (not starting) {
	ended = false;
	ending = true;
	paused = true;
	alarm_set(1, 2 * game_get_speed(gamespeed_fps));
}

}

if (room == Title_Screen)
{
	starting = false;
	if mouse_check_button_pressed(mb_left) and (not (os_browser == browser_not_a_browser)) {
		html5_focused--;
		if html5_focused == 0 {
			audio_stop_all();
			audio_play_sound(snd_title_theme, 0, false);
		}
	}
	if keyboard_check_pressed(vk_enter) {
		starting = true;
		ending = false;
		paused = true;
		current_score = 0;
		alarm_set(0, 2 * game_get_speed(gamespeed_fps));
		audio_stop_all();
		room_goto_next();
	}
}

if (room == Game_Over)
{
	starting = false;
	if keyboard_check_pressed(vk_enter) {
		paused = true;
		starting = false;
		ending = false;
		ended = false;
		lost = false;
		enemy_amount = 0;
		room_goto(Title_Screen);
	}
}