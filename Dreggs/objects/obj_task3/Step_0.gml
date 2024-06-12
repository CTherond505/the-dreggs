/// @description Insert description here

if (!global.task3_complete) {
    x = 130;
    y = 500;
} else {
    x = 1000;
}

// Reset task3 only once per task on day 4
if (global.day == 4) {
    if (global.task1_complete && !global.task3_reset1) {
        global.task3_complete = false;
        global.task3_reset1 = true;
    }

    if (global.task2_complete && !global.task3_reset2) {
        global.task3_complete = false;
        global.task3_reset2 = true;
    }

    if (global.task4_complete && !global.task3_reset4) {
        global.task3_complete = false;
        global.task3_reset4 = true;
    }
}


if (global.day == 4) {
    if ((global.task1_complete && global.task2_complete) && !global.task3_reset_day4) {
        global.task3_complete = false;
        global.task3_reset_day4 = true;
    }
}


if (global.day == 5) {
    if ((global.task1_complete || global.task2_complete || global.task4_complete) && !global.task3_reset_day4) {
        global.task3_complete = false;
        global.task3_reset_day4 = true;
    }
}


if ((global.task1_complete && global.task2_complete) && global.day == 4) {
    global.task3_complete = false;
}

if ((global.task1_complete && global.task2_complete && global.task4_complete) && global.day == 5 || global.day == 6 || global.day == 7) {
    global.task3_complete = false;
}

