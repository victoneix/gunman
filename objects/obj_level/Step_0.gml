if(keyboard_check_pressed(vk_escape)) game_end();

if(global.level < 17){
	if(global.score >= global.list_score[global.level - 1]){
		timer_max -= 0.2;
		global.level++;
	}
}


layer_hspeed("Background", - 0.9);