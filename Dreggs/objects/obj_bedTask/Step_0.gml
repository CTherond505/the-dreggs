if (obj_player.x < x + 128 and obj_player.x > x - 128)
{
	if (obj_player.y < y + 64 and obj_player.y > y - 64)
	{
		if (keyboard_check(ord("E")) == 1 && global.allTasksComplete = true)
		{
			obj_dayManager.endDay = true;
			obj_blackScreen.fading = true;
			obj_player.waiting = true;
		}
	}
}
if (global.day > 7)
{
	sprite_index = spr_trashBags;
}