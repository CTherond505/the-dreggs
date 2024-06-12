if (endDay == true)
{
	if (obj_blackScreen.fading == true and faded == false)
	{
		show_debug_message("fading");
		scr_blackScreen(true);
	}
	else if (obj_blackScreen.fading == false)
	{
		if (global.day == lastDay)
		{
			global.day += 1;
		}
		// text function
		show_debug_message("waiting");
		if (fadeOut)
		{
			show_debug_message("fading out");
			faded = true;
			scr_blackScreen(false);
		}
		if (alarmRun = false and fadeOut == false)
		{
			scr_displayStory(global.day);
			alarm[0] = room_speed * 5;
			scr_nextDay(global.day);
			alarmRun = true;
		}
	}
	else if (obj_blackScreen.fading == true and faded == true)
	{
		show_debug_message("finished");
		fadeOut = false;
		faded = false;
		lastDay += 1;
		obj_blackScreen.fading = false;
		endDay = false;
	}
}