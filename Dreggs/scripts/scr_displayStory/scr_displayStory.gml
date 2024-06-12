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
		obj_textBox.text = "As you were getting ready for bed,\n\nyou tripped and badly messed up your back.\n\nYou ended up in hospital for 3 days";
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
		obj_textBox.text = "BIG MEETING IN 3 DAYS\n\nthese pills are making quite a difference";
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
		obj_textBox.text = "BIG MEETING IN 2 DAYS\n\nI should take some more pills when i wake up";
	}
	else if (day == 6)
	{
		obj_textBox.text = "BIG MEETING TOMORROW MORNING\n\nI NEED to take my pills when i wake up";
	}
	else if (day == 7)
	{
		obj_textBox.text = "I cant believe i lost my job,\n\n am I stuck on the streets now?";
	}
	else if (day == 8)
	{
		obj_textBox.text = "The streets are much worse than home,\n\nbut atleast I have my painkillers";
	}
	else if (day == 9)
	{
		obj_textBox.text = "There's nowhere near enough food here to\n\nfeed both me and my dog";
	}
	else if (day == 10)
	{
		obj_textBox.text = "I'll miss him,\n\nthe painkillers will help";
	}
	else if (day == 11)
	{
		obj_textBox.text = "Is life even worth living any more";
	}
	else if (day == 12)
	{
		obj_textBox.text = "Addiction can happen to anyone.\n\nFind information on how you can help below:\n\nhttps://bridge.salvationarmy.org.nz/#:~:text=The%20Salvation%20Army%20Bridge%20provides,other%20drugs%20in%20people%27s%20lives.";
	}
}