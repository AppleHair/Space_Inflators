/// @description
// You can write your code in this editor

if (obj_game.paused != last_paused)
{
	last_paused = obj_game.paused;
	if (last_paused) {
		saved_vspeed = vspeed;
		saved_hspeed = hspeed;
		vspeed = 0;
		hspeed = 0;
	} else {
		vspeed = saved_vspeed;
		hspeed = saved_hspeed;
	}
}

if enemy_health <= 0 {
	if (not dying) {
		dying = true;
		enemy_score *= obj_game.score_multi;
		obj_game.current_level_score += enemy_score;
		alarm_set(0, 1 * game_get_speed(gamespeed_fps));
		vspeed = 0;
		hspeed = 0;
		saved_vspeed = 0;
		saved_hspeed = 0;
	}
} else if enemy_health <= health_large {
	sprite_index = spr_enemy1_large;
} else if enemy_health <= health_medium {
	sprite_index = spr_enemy1_medium;
} else {
	sprite_index = spr_enemy1_small;
}
	


if (y <= 0 or y >= room_height) {
	vspeed = -vspeed;
}

if (x <= 0 or x >= room_width) {
	hspeed = -hspeed;
}

