function scr_displayStory(day){
	instance_create_layer(400, 400, "Story", obj_textBox);
	if (day == 2)
	{
		obj_textBox.text = "BIG MEETING IN 7 MORE DAYS\n\ntoday was nice";
	}
	else if (day == 3)
	{
		obj_textBox.text = "that really hurt";
	}
	else if (day == 4)
	{
		obj_textBox.text = "these pills are making quite a difference";
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