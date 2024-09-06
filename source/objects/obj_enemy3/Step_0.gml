/// @description
// You can write your code in this editor

if (obj_game.paused != last_paused)
{
	last_paused = obj_game.paused;
	if (last_paused) {
		// Game just paused!
		saved_vspeed = vspeed;
		saved_hspeed = hspeed;
		vspeed = 0;
		hspeed = 0;
		saved_shoot_alarm = alarm_get(0);
		if (saved_shoot_alarm == 1) {
			// so that a bullet won't be fired
			// every frame when paused
			saved_shoot_alarm = 2;
		}
	} else {
		// game just unpaused!
		vspeed = saved_vspeed;
		hspeed = saved_hspeed;
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
		hspeed = 0;
		saved_vspeed = 0;
		saved_hspeed = 0;
	}
} else if enemy_health <= health_large {
	sprite_index = spr_enemy3_large;
	image_angle = 0;
	bullet_amount = 4;
} else if enemy_health <= health_medium {
	sprite_index = spr_enemy3_medium;
	image_angle = 0;
	bullet_amount = 2;
} else {
	sprite_index = spr_enemy3_small;
	bullet_amount = 1;
	if (instance_exists(obj_ship)) {
		dir_to_ship = point_direction(x, y, obj_ship.x, obj_ship.y);
	}
	image_angle = dir_to_ship;
}
	


if (y <= 0 or y >= room_height) {
	vspeed = -vspeed;
}

if (x <= 0 or x >= room_width) {
	hspeed = -hspeed;
}

if image_angle < 45 or image_angle > 315 {
	image_angle = 0;
} else if image_angle < 135 {
	image_angle = 90;
} else if image_angle < 225 {
	image_angle = 180;
} else {
	image_angle = 270;
}

