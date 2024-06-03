if (endDay == true)
{
	if (obj_blackScreen.fading == true and faded == false)
	{
		show_debug_message("fading");
		scr_blackScreen(true);
	}
	else if (obj_blackScreen.fading == false)
	{
		if (day == lastDay)
		{
			day += 1;
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
			instance_create_layer(122, 200, "Story", obj_textBox);
			scr_displayStory(day);
			alarm[0] = room_speed * 5;
			alarmRun = true;
		}
	}
	else if (obj_blackScreen.fading == true and faded == true)
	{
		show_debug_message("finished");
		fadeOut = false;
		faded = false;
		lastDay += 1;
		scr_nextDay(day);
		obj_blackScreen.fading = false;
		endDay = false;
	}
}