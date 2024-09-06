/// @description shoot
// You can write your code in this editor

if (not dying) {

for (var _i = 0; _i < min(3, bullet_amount); ++_i) {
    var _bullet = instance_create_layer(x + sprite_width, y, layer, obj_bullet);
	_bullet.image_xscale = image_xscale;

	with (_bullet) {
		if (other.bullet_amount > 1) {
			switch (_i) {
				case 0:
					y += other.sprite_height/4;
					break;
				case 1:
					y -= other.sprite_height/4;
					break;
				default:
					break;
			}
		}
		if (other.image_xscale < 0) {
			direction = 180;
		} else {
			direction = 0;
		}
	}
}

alarm_set(0, 2 * game_get_speed(gamespeed_fps));

}


