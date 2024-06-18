// Initial setup of x and y based on task completion and pills taken
if (!global.task3_complete || !global.pillsTaken) {
    x = 130;
    y = 500;
} else {
    x = 1000;
}

if (obj_dayManager.endDay)
{
	global.pillsResetCounter = 0;
    global.task3_reset_day4 = false;
    global.task3_reset_day5 = false;
    global.task3_reset_day6_7_1 = false;
    global.task3_reset_day6_7_2 = false;
    global.task3_reset_day6_7_3 = false;	
}


// Reset pillsTaken once on day 4 if specific tasks are complete
if (global.day == 4 && !global.task3_reset_day4) {
    if (global.task1_complete && global.task2_complete && global.task5_complete) {
        global.pillsTaken = false;
        global.task3_reset_day4 = true;
    }
}

// Reset pillsTaken once on day 5 if specific tasks are complete
if (global.day == 5 && !global.task3_reset_day5) {
    if ((global.task1_complete && global.task2_complete) || 
        (global.task1_complete && global.task5_complete) || 
        (global.task2_complete && global.task5_complete)) {
        global.pillsTaken = false;
        global.task3_reset_day5 = true;
    }
}

// Reset pillsTaken up to three times on days 6 and 7 if specific tasks are complete
if (global.day == 6 || global.day == 7) {
    // First reset
    if (!global.task3_reset_day6_7_1 && global.pillsResetCounter < 3) {
        if (global.task1_complete) {
            global.pillsTaken = false;
            global.pillsResetCounter += 1;
            global.task3_reset_day6_7_1 = true;
        }
    }
    // Second reset
    if (!global.task3_reset_day6_7_2 && global.pillsResetCounter < 3) {
        if (global.task2_complete && !global.task3_reset_day6_7_1) {
            global.pillsTaken = false;
            global.pillsResetCounter += 1;
            global.task3_reset_day6_7_2 = true;
        }
    }
    // Third reset
    if (!global.task3_reset_day6_7_3 && global.pillsResetCounter < 3) {
        if (global.task5_complete && !global.task3_reset_day6_7_1 && !global.task3_reset_day6_7_2) {
            global.pillsTaken = false;
            global.pillsResetCounter += 1;
            global.task3_reset_day6_7_3 = true;
        }
    }
}