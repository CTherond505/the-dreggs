/// @description Insert description here

if (!global.task3_complete || !global.pillsTaken) {
    x = 130;
    y = 500;
} else {
    x = 1000;
}

if ((global.task1_complete && global.task2_complete) && global.day == 4 && 	!global.task3_reset_day4) {
    global.pillsTaken = false;
	global.task3_reset_day4 = true;
}


if (global.day == 5 || global.day == 6 || global.day == 7|| global.day == 8) {
    if ((global.task1_complete || global.task2_complete || global.task4_complete) && !global.task3_reset_day5) {
        global.pillsTaken = false;
        global.task3_reset_day5 = true;
    }
}