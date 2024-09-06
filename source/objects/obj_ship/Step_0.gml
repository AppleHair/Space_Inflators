/// @description movement and shooting

var _final_h_velocity = 0;

var _final_v_velocity = 0;

if not obj_game.paused
{

	if keyboard_check(ord("A")) {
		_final_h_velocity -= h_velocity;
	}

	if keyboard_check(ord("D")) {
		_final_h_velocity += h_velocity;
	}

	if keyboard_check(ord("W")) {
		_final_v_velocity -= v_velocity;
	}

	if keyboard_check(ord("S")) {
		_final_v_velocity += v_velocity;
	}

}

hspeed = _final_h_velocity;
if (x + hspeed <= 0) {
	x = 0;
	hspeed = 0;
} else if (x + hspeed >= room_width) {
	x = room_width;
	hspeed = 0;
}

vspeed = _final_v_velocity;
if (y + vspeed <= 0) {
	y = 0;
	vspeed = 0;
} else if (y + vspeed >= room_height) {
	y = room_height;
	vspeed = 0;
}

if not obj_game.paused
{
	var _should_shoot = false;

	if keyboard_check_pressed(vk_right) {
		image_angle = 0;
		_should_shoot = true;
	} else if keyboard_check_pressed(vk_up) {
		image_angle = 90;
		_should_shoot = true;
	} else if keyboard_check_pressed(vk_left) {
		image_angle = 180;
		_should_shoot = true;
	} else if keyboard_check_pressed(vk_down) {
		image_angle = 270;
		_should_shoot = true;
	}

	if _should_shoot {
		alarm_set(0, 1);
	}

}
