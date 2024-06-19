if (global.day != 13)
{
	fadeOut = true;
	alarmRun = false;
	show_debug_message("alarm run");
	instance_destroy(obj_textBox);
}
else
{
	alarm[1] = room_speed * 5;
}