// Movement and control variables
playerFacing = 1;
maxSpeed = 5;
currentXSpeed = 0;
currentYSpeed = 0;
accel = 0.2;
deccel = 0.2; 

// State variables
waiting = false;
waitTimer = 60;
depth = -1;

// Task completion flags
global.task1_complete = false;
global.task1_completeGUI = false;
global.task2_complete = false;
global.task2_completeGUI = false;
global.task3_complete = true;
global.task3_completeGUI = true;
global.task4_complete = false;
global.task4_completeGUI = false;
global.allTasksComplete = false;
global.otherTasksComplete = false
// Speed reduction variables
speedMultiplier = 1;
reductionRate = 0.001;

// Create progress bar instance
var new_instance = instance_create_layer(x-1000, y, layer, obj_progressBar);
new_instance.depth = -1000;
