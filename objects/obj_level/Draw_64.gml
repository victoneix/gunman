var _misc = font_add_sprite_ext(spr_misc, "1234567890", 0, 0);

var _txt = string_format(global.score, 9, 0);
var _score = string_replace_all(_txt, " ", "0");

draw_set_font(_misc);
draw_set_halign(2);
draw_text_ext_transformed(824, 606, _score, 0, 999999, 4, 4, 0);
draw_set_halign(0);
draw_set_font(-1);

//draw_text(4, 0, "Level: " + string(global.level));
//draw_text(4, 16, "Speed: " + string(timer_max));