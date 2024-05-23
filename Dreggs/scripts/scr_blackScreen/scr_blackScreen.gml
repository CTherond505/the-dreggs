// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_blackScreen(_bool){
	if (_bool == true)
	{
		if (obj_blackScreen.image_alpha < 1)
		{
			obj_blackScreen.image_alpha += 0.01;
			if (obj_blackScreen.image_alpha == 1)
			{
				obj_blackScreen.fading = false;
			}
			
		}
	}
	else if (_bool == false)
	{
		if (obj_blackScreen.image_alpha > 0)
		{
			obj_blackScreen.image_alpha -= 0.01;
			if (obj_blackScreen.image_alpha == 0)
			{
				obj_blackScreen.fading = false;
			}
		}
	}
}