/// @description

if (flash) {
	shader_set(sh_flash);
}

if (dying) {
	draw_set_font(obj_game.main_font);
	draw_set_colour(c_white);
	draw_set_alpha(1);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(x, y, string(enemy_score));
} else {
	draw_self();	
}

shader_reset();