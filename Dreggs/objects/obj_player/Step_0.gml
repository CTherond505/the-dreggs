// Reference to the existing progress bar in the room
var progressBar = obj_progressBar;

// Movement controls
var key_right = keyboard_check(ord("D"));
var key_left = keyboard_check(ord("A"));
var key_up = keyboard_check(ord("W"));
var key_down = keyboard_check(ord("S"));

// Adjust the speed if task 4 is not completed
if (!global.pillsTaken) {
	if speedMultiplier >= 0.6
	{
		speedMultiplier -= (reductionRate * 2);
	}
	else
	{
		speedMultiplier -= (reductionRate / 2);
		if (speedMultiplier < 0.2) {
			speedMultiplier = 0.2;
		}
	} 
} else {
    speedMultiplier = 1;
}

// Only allow movement if not waiting
if (!waiting) {
    if (key_right - key_left == 0) {
        currentXSpeed = 0;
    } else {
        currentXSpeed += (key_right - key_left);
    }

    if (key_down - key_up == 0) {
        currentYSpeed = 0;
    } else {
        currentYSpeed += (key_down - key_up);
    }

    if (abs(currentXSpeed) > maxSpeed * speedMultiplier) {
        currentXSpeed = maxSpeed * speedMultiplier * sign(currentXSpeed);
    }

    if (abs(currentYSpeed) > maxSpeed * speedMultiplier) {
        currentYSpeed = maxSpeed * speedMultiplier * sign(currentYSpeed);
    }

    if (place_free(x + currentXSpeed, y)) {
        x += currentXSpeed / 2;
    }

    if (place_free(x, y + currentYSpeed)) {
        y += currentYSpeed / 2;
    }

    if (keyboard_check(ord("A"))) {
        playerFacing = 180;
    } else if (keyboard_check(ord("D"))) {
        playerFacing = 0;
    }
}

// Task interaction checks
if (keyboard_check_pressed(ord("E"))) {
    if (point_distance(x, y, obj_task1.x, obj_task1.y) <= 50 && !waiting && !global.task1_complete) {
        // Start waiting period
        waiting = true;
        // Move progress bar above task
        progressBar.x = obj_task1.x;
        progressBar.y = obj_task1.y - 30;
        global.task1_complete = true;
    } else if (point_distance(x, y, obj_task2.x, obj_task2.y) <= 50 && !waiting && !global.task2_complete) {
        // Start waiting period
        waiting = true;
        // Move progress bar above task
        progressBar.x = obj_task2.x;
        progressBar.y = obj_task2.y - 30;
        global.task2_complete = true;
    } else if (point_distance(x, y, obj_task3.x, obj_task3.y) <= 50 && !waiting && !global.task3_complete) {
        // Start waiting period
        waiting = true;
        // Move progress bar above task
        progressBar.x = obj_task3.x;
        progressBar.y = obj_task3.y - 30;
        global.task3_complete = true;
		global.pillsTaken = true;
    } else if (point_distance(x, y, obj_task4.x, obj_task4.y) <= 50 && !waiting && !global.task4_complete && global.otherTasksComplete) {
        // Start waiting period
        waiting = true;
        // Move progress bar above task
        progressBar.x = obj_task4.x;
        progressBar.y = obj_task4.y - 30;
        global.task4_complete = true;
    }
	else if (point_distance(x, y, obj_task3.x, obj_task3.y) <= 50 && !waiting && !global.pillsTaken) {
        // Start waiting period
        waiting = true;
        // Move progress bar above task
        progressBar.x = obj_task3.x;
        progressBar.y = obj_task3.y - 30;
		global.pillsTaken = true;
	}
}
// Waiting period controls
if (waiting) {
	sprite_index = spr_idle;
    if (global.waitTimer <= 0) {
        // End waiting period
        progressBar.y = y - 3200;

        if (global.task1_complete) {
            obj_task1.sprite_index = spr_dogBowlFull;
            global.task1_completeGUI = true;
        }
        if (global.task2_complete) {
            obj_task2.y = y - 640;
            global.task2_completeGUI = true;
        }
        if (global.task3_complete) {
            global.task3_completeGUI = true;
        }
        if (global.task4_complete) {
            obj_task4.image_index = 1;
            global.task4_completeGUI = true;
        }
		waiting = false;
		global.waitTimer = global.waitTimerReset;
    } 
	else {
        global.waitTimer--;
    }
}

// Check if all tasks are complete
global.allTasksComplete = global.task1_completeGUI && global.task2_completeGUI && global.task3_completeGUI && global.task4_completeGUI;
global.otherTasksComplete = global.task1_complete && global.task2_complete && global.task3_completeGUI;

if (currentXSpeed > 0)
{
	sprite_index = spr_walkRight;
}
else if (currentXSpeed < 0)
{
	sprite_index = spr_walkLeft;
}
else if (currentYSpeed > 0)
{
	sprite_index = spr_walkDown;
}
else if (currentYSpeed < 0)
{
	sprite_index = spr_walkUp;
}
else
{
	sprite_index = spr_idle;
}