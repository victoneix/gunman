var _jump = random_range(5.2, 8.6);
if(place_meeting(x,y+1,obj_collision)){
	vspd = 0;
	vspd -= _jump;
}
alarm[0] = 22*mult;