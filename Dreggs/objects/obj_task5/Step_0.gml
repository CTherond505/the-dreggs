if (room = rm_street)
{
	global.task5_complete = true
	global.task5_completeGUI = true
}

if (!global.task5_complete)
{
	image_index = 1;
}
else
{
	image_index = 0;
}