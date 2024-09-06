/// @description
// You can write your code in this editor

if (obj_game.paused != last_paused)
{
	last_paused = obj_game.paused;
	if (last_paused) {
		// Game just paused!
		saved_vspeed = vspeed;
		vspeed = 0;
		saved_shoot_alarm = alarm_get(0);
		if (saved_shoot_alarm == 1) {
			// so that a bullet won't be fired
			// every frame when paused
			saved_shoot_alarm = 2;
		}
	} else {
		// game just unpaused!
		vspeed = saved_vspeed;
	}
}

if (obj_game.paused) {
	alarm_set(0, saved_shoot_alarm);
}

if enemy_health <= 0 {
	if (not dying) {
		dying = true;
		enemy_score *= obj_game.score_multi;
		obj_game.current_level_score += enemy_score;
		alarm_set(1, 1 * game_get_speed(gamespeed_fps));
		vspeed = 0;
		saved_vspeed = 0;
	}
} else if enemy_health <= health_large {
	bullet_amount = 3;
	sprite_index = spr_enemy2_large;
} else if enemy_health <= health_medium {
	bullet_amount = 2;
	sprite_index = spr_enemy2_medium;
} else {
	bullet_amount = 1;
	sprite_index = spr_enemy2_small;
}

if (not obj_game.paused) and (not dying)
{

// we need speed_amount to set
// vspeed over multiple frames without
// getting stuck (if the enemy changes size
// when near the border for example)
if (y - sprite_height/2 <= 0) {
	vspeed = speed_amount;
}
if (y + sprite_height/2 >= room_height) {
	vspeed = -speed_amount;
}

}