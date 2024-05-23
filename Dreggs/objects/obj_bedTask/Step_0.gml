if (obj_player.x < x + 128 and obj_player.x > x - 128)
{
	if (obj_player.y < y + 64 and obj_player.y > y - 64)
	{
		if (keyboard_check(ord("E")) == 1)
		{
			obj_dayManager.endDay = true;
		}
	}
}