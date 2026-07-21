var _y1 = random_range(11, 135);
var _y2 = clamp(y, obj_player.y, 135);
var _che = random(1);

if(_che < 0.08){
	instance_create_layer(216, 16, layer, obj_enemy3);
} else if(_che < 0.38){
	instance_create_layer(216, _y1, layer, obj_enemy2);
} else{
	instance_create_layer(216, _y2, layer, obj_enemy);
}

alarm[0] = game_get_speed(gamespeed_fps)*timer_max;