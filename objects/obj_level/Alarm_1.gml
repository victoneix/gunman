var _pipe_y = random_range(128, 176);
var _pipe_up = instance_create_layer(320, _pipe_y, layer, obj_pipe);
_pipe_up.sprite_index = spr_pipe_up;

var _mult = irandom_range(4, 8);
alarm[1] = game_get_speed(gamespeed_fps)*_mult;