/// @description Text
// You can write your code in this editor

if (starting) {
	draw_set_font(main_font);
	draw_set_colour(c_white);
	draw_set_alpha(1);
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	draw_text(room_width/2, room_height/2, room_get_name(room));
}


if (room == Title_Screen) {
	draw_sprite(spr_logo, 0, 24, 16);
	
	draw_set_font(main_font);
	draw_set_colour(c_white);
	draw_set_alpha(1);
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	draw_text(room_width/2, room_height/2 - 16, "By    AppleHair");
	draw_set_valign(fa_top);
	draw_text(room_width/2, room_height/2 + 40, string_concat("Last    Score    ", current_score));
	
	draw_set_font(main_font);
	draw_set_colour(c_white);
	draw_set_alpha(1);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_text(room_width/2, room_height*0.75 + 16, "Press    Enter    To    Begin");

	draw_set_font(main_font);
	draw_set_colour(c_white);
	draw_set_alpha(1);
	draw_set_halign(fa_right);
	draw_set_valign(fa_bottom);
	draw_text(room_width, room_height, string_concat("Version    ", game_version));
} else if (room == Game_Over) {
	
	draw_set_font(title_font);
	draw_set_colour(c_yellow);
	draw_set_alpha(1);
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	draw_text(room_width/2, room_height/2, "You    Won");
	
	draw_set_font(main_font);
	draw_set_colour(c_white);
	draw_set_alpha(1);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_text(room_width/2, room_height/2, string_concat("Final    Score    ", current_score));
	
	draw_set_font(main_font);
	draw_set_colour(c_white);
	draw_set_alpha(1);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_text(room_width/2, room_height*0.75, "Press    Enter");
	draw_text(room_width/2, room_height*0.75 + 11, "To    Go    to    Title    Screen");
} else {
	draw_set_font(main_font);
	draw_set_colour(c_white);
	draw_set_alpha(1);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text(0, 0, string_concat("Score    ", current_score + current_level_score));
	draw_set_halign(fa_right);
	draw_text(room_width, 0, string_concat("Multi    ", score_multi));
}
