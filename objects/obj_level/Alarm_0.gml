var _plr_y = clamp(y, obj_player.y, 176);
var _che = random(1);


if(_che < 0.55){
	instance_create_layer(320, 160, layer, obj_enemy2);
} else{
	instance_create_layer(320, _plr_y, layer, obj_enemy);
}

var _mult = irandom_range(2, 3);
alarm[0] = game_get_speed(gamespeed_fps)*_mult;