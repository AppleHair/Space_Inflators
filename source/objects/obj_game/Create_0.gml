/// @description
// You can write your code in this editor

game_version = "1.0.1";

font_add_enable_aa(false);

if (webgl_enabled and (not (os_browser == browser_not_a_browser))) {
	main_font = fnt_webgl_main;
	title_font = fnt_webgl_title;
} else {
	main_font = font_add("ARCADECLASSIC.TTF", 11, false, false, 32, 128);
	title_font = font_add("ARCADECLASSIC.TTF", 22, false, false, 32, 128);
}

paused = true;

starting = false;
ending = false;
ended = false;
lost = false;

html5_focused = 2;

enemy_amount = 0;

score_multi = 1;
current_level_score = 0;
current_score = 0;