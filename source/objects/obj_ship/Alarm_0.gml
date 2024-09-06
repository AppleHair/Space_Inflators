/// @description Auto-fire
// You can write your code in this editor

if (keyboard_check(vk_left) or keyboard_check(vk_up) or keyboard_check(vk_right) or keyboard_check(vk_down))
{
	
if (not obj_game.paused)
{
	var _lazer = instance_create_layer(x, y, layer, obj_lazer);

	with (_lazer) {
		direction = other.image_angle;
		image_angle = other.image_angle;
	}
}

alarm_set(0, 0.15 * game_get_speed(gamespeed_fps));

}