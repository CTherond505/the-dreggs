if (endDay == true)
{
	obj_blackScreen.fading = true;
	if (obj_blackScreen.fading == true)
	{
		scr_blackScreen(true);
	}
	else
	{
		day += 1;
		scr_nextDay(day);
	}
}