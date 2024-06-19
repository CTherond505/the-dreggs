// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_nextDay(_day){
	if (_day == 2)
	{
		// change speed things once speed implimented
	}
	if (_day == 3)
	{
		// change speed things once speed implimented
	}
	if (_day == 4)
	{
		// change speed things once speed implimented
	}
	if (_day == 5)
	{
		global.task1_complete = false;
		global.task1_completeGUI = false;
		global.task2_complete = false;
		global.task2_completeGUI = false;
		global.task3_complete = false;
		global.task3_completeGUI = false;
		global.task4_complete = false;
		global.task4_completeGUI = false;
		global.task5_complete = false;
		global.task5_completeGUI = false;
	}
	if (_day = 6)
	{
		global.task1_complete = false;
		global.task1_completeGUI = false;
		global.task2_complete = false;
		global.task2_completeGUI = false;
		global.task3_complete = false;
		global.task3_completeGUI = false;
		global.task4_complete = false;
		global.task4_completeGUI = false;
		global.task5_complete = false;
		global.task5_completeGUI = false;
	}
	if (_day = 7)
	{
		obj_timer.timeLeft = 30;
		obj_timer.run = true;
		obj_timer.image_alpha = 0.5;
		global.task1_complete = false;
		global.task1_completeGUI = false;
		global.task2_complete = false;
		global.task2_completeGUI = false;
		global.task3_complete = false;
		global.task3_completeGUI = false;
		global.task4_complete = false;
		global.task4_completeGUI = false;
		global.task5_complete = false;
		global.task5_completeGUI = false;
	}
	if (_day == 8)
	{
		room_goto(rm_street);
		global.task1_complete = false;
		global.task1_completeGUI = false;
		global.task2_complete = true;
		global.task2_completeGUI = true;
		global.task3_complete = false;
		global.task3_completeGUI = false;
		global.task4_complete = true;
		global.task4_completeGUI = true;
		global.task5_complete = true;
		global.task5_completeGUI = true;
	}
	if (_day == 9)
	{
		global.task1_complete = false;
		global.task1_completeGUI = false;
		global.task2_complete = true;
		global.task2_completeGUI = true;
		global.task3_complete = false;
		global.task3_completeGUI = false;
		global.task4_complete = true;
		global.task4_completeGUI = true;
		global.task5_complete = true;
		global.task5_completeGUI = true;
	}
	if (_day == 10)
	{
		global.task1_complete = false;
		global.task1_completeGUI = false;
	}
	if (_day == 11)
	{
		global.task1_complete = false;
		global.task1_completeGUI = false;
	}
	if (_day == 12)
	{
		obj_guiBackground.image_alpha = 0;
	}
	
}