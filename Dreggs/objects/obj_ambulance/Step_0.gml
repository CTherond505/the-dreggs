if (global.day == 12 and canRun == true)
{
	x = 400;
	y = 650;
	alarm[0] = room_speed * 10;
	canRun = false;
}
if (leave)
{
	x += 3;
}
if (x > 1000)
{
	obj_dayManager.endDay = true;
	obj_blackScreen.fading = true;
	instance_destroy();
}