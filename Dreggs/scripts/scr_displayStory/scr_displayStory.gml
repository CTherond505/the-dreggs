function scr_displayStory(day){
	instance_create_layer(400, 400, "Story", obj_textBox);
	if (day == 1)
	{

	}
	if (day == 2)
	{
		global.task1_complete = false;
		global.task1_completeGUI = false;
		global.task2_complete = false;
		global.task2_completeGUI = false;
		global.task3_complete = true;
		global.task3_completeGUI = true;
		global.task4_complete = false;
		global.task4_completeGUI = false;
		
		obj_textBox.text = "BIG MEETING IN 7 MORE DAYS\n\ntoday was nice";
	}
	else if (day == 3)
	{
		obj_textBox.text = "that really hurt";
		global.task1_complete = false;
		global.task1_completeGUI = false;
		global.task2_complete = false;
		global.task2_completeGUI = false;
		global.task3_complete = false;
		global.task3_completeGUI = false;
		global.task4_complete = false;
		global.task4_completeGUI = false;
	}
	else if (day == 4)
	{
		obj_textBox.text = "these pills are making quite a difference";
		global.task1_complete = false;
		global.task1_completeGUI = false;
		global.task2_complete = false;
		global.task2_completeGUI = false;
		global.task3_complete = false;
		global.task3_completeGUI = false;
		global.task4_complete = false;
		global.task4_completeGUI = false;
	}
	else if (day == 5)
	{
		obj_textBox.text = "i should take some more pills when i wake up";
	}
	else if (day == 6)
	{
		obj_textBox.text = "i need to take more pills tomorrow";
	}
	else if (day == 7)
	{
		obj_textBox.text = "i cant believe i lost my job,\n\n where will i live?";
	}
	else if (day == 8)
	{
		obj_textBox.text = "";
	}
	else if (day == 9)
	{
		obj_textBox.text = "";
	}
	else if (day == 10)
	{
		obj_textBox.text = "";
	}
	else if (day == 11)
	{
		obj_textBox.text = "";
	}
	else if (day == 12)
	{
		obj_textBox.text = "";
	}
}