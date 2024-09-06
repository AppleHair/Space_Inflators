/// @description shoot
if (not dying) {

for (var _i = 0; _i < min(4, bullet_amount); ++_i) {
    var _bullet = instance_create_layer(x, y, layer, obj_bullet);

	with (_bullet) {
		if (other.bullet_amount > 1) {
			switch (_i) {
				case 0:
					y -= other.sprite_height/2;
					direction = 90;
					image_angle = 90;
					break;
				case 1:
					y += other.sprite_height/2;
					direction = 270;
					image_angle = 270;
					break;
				case 2:
					x += other.sprite_width/2;
					direction = 0;
					image_angle = 0;
					break;
				case 3:
					x -= other.sprite_width/2;
					direction = 180;
					image_angle = 180;
					break;
				default:
					break;
			}
		} else {
			direction = other.dir_to_ship;
			sprite_index = spr_bullet_center;
		}
	}
}

alarm_set(0, 2 * game_get_speed(gamespeed_fps));

}