if (run and obj_dayManager.endDay = false)
{
	if (canAlarm)
	{
		alarm[0] = room_speed * 1;
		canAlarm = false;
	}
}
if (timeLeft <= 0 and ran == false)
{
	obj_dayManager.endDay = true;
	obj_blackScreen.fading = true;
	ran = true;
	instance_destroy();
}