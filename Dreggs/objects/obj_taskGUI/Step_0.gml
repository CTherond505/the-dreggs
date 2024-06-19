// Check if the variable is true
if (global.task1_completeGUI == true) {
    task1 = "";
}
else if (global.task1_completeGUI == false && room == rm_house) {
	task1 = "Feed the dog. ";
}
else if (global.task1_completeGUI == false && room == rm_street) {
	task1 = "Eat. ";
}

if (global.task2_completeGUI == true) {
    task2 = "";
}
else if (global.task2_completeGUI == false) {
	task2 = "Clean the spill. ";
}
if (global.task3_completeGUI == true) {
    task3 = "";
}
else if (global.task3_completeGUI == false) {
	task3 = "Take your painkillers. ";
}
else if (global.task3_completeGUI == false && room == rm_street) {
	task3 = "Take " + global.task3_reset_day10*-1 + "/3 painkillers. ";
}
if (global.task4_completeGUI == true) {
    task4 = "";
}
else if (global.task4_completeGUI == false) {
	task4 = "Go to work. ";
}
if (global.task5_completeGUI == true) {
    task5 = "";
}
else if (global.task5_completeGUI == false) {
	task5 = "Have a bath. ";
}
