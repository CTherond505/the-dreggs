// Reference to the existing progress bar in the room
var progressBar = obj_progressBar;

// Movement controls
var key_right = keyboard_check(ord("D"));
var key_left = keyboard_check(ord("A"));
var key_up = keyboard_check(ord("W"));
var key_down = keyboard_check(ord("S"));



// Only allow movement if not waiting
if (!waiting) {
    if (key_right - key_left == 0) {
        currentXSpeed *= deccel;
    } else {
        currentXSpeed += (key_right - key_left) * accel;
    }

    if (key_down - key_up == 0) {
        currentYSpeed *= deccel;
    } else {
        currentYSpeed += (key_down - key_up) * accel;
    }

    if (abs(currentXSpeed) > maxSpeed) {
        currentXSpeed = maxSpeed * sign(currentXSpeed);
    }

    if (abs(currentYSpeed) > maxSpeed) {
        currentYSpeed = maxSpeed * sign(currentYSpeed);
    }

    if (keyboard_check_pressed(ord("A"))) {
        image_xscale = -1;
    }

    if (keyboard_check_pressed(ord("D"))) {
        image_xscale = 1;
    }

    if (place_free(x + currentXSpeed, y)) {
        x += currentXSpeed;
    }

    if (place_free(x, y + currentYSpeed)) {
        y += currentYSpeed;
    }

    if (keyboard_check(ord("A"))) {
        playerFacing = 180;
    } else if (keyboard_check(ord("D"))) {
        playerFacing = 0;
    }
}


if (keyboard_check_pressed(ord("E")) && point_distance(x, y, obj_task1.x, obj_task1.y) <= 50 && !waiting && global.task1_complete = false) {
    // Start waiting period
    waiting = true;
    // Move progress bar above player's head
    progressBar.x = obj_task1.x;
    progressBar.y = obj_task1.y - 64;
	global.task1_complete = true;
}

if (keyboard_check_pressed(ord("E")) && point_distance(x, y, obj_task2.x, obj_task2.y) <= 50 && !waiting && global.task2_complete = false) {
    // Start waiting period
    waiting = true;
    // Move progress bar above player's head
    progressBar.x = obj_task2.x;
    progressBar.y = obj_task2.y - 64;
	global.task2_complete = true;
}

if (keyboard_check_pressed(ord("E")) && point_distance(x, y, obj_task3.x, obj_task3.y) <= 50 && !waiting && global.task3_complete = false) {
    // Start waiting period
    waiting = true;
    // Move progress bar above player's head
    progressBar.x = obj_task3.x;
    progressBar.y = obj_task3.y - 64;
	global.task3_complete = true;
}

// Waiting period controls
if (waiting = true) {
    // Decrease the wait timer
    if (waitTimer <= 0) {
        // End waiting period
        waiting = false;
		waitTimer = 22;
		progressBar.y = y - 3200;
		
		if (global.task1_complete = true){    
			obj_task1.sprite_index = spr_dogBowlFull;
			global.task1_completeGUI = true;
		}
		if (global.task2_complete = true){    
			obj_task2.y = y - 640;
			global.task2_completeGUI = true;
		}
		if (global.task3_complete = true){    
			obj_task3.y = y - 640;
			global.task3_completeGUI = true;
		}
    }
	else{
		waitTimer --;
	}
}
