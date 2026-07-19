var _plr_y = clamp(y, obj_player.y, 176);
var _che = random(1);

if(_che < 0.08){
	instance_create_layer(320, 32, layer, obj_enemy3);
} else if(_che < 0.38){
	instance_create_layer(320, 160, layer, obj_enemy2);
} else{
	instance_create_layer(320, _plr_y, layer, obj_enemy);
}

var _mult = random_range(0.7, 2.1);
alarm[0] = game_get_speed(gamespeed_fps)*_mult;