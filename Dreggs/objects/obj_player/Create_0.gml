// Movement and control variables
playerFacing = 1;
maxSpeed = 5;
currentXSpeed = 0;
currentYSpeed = 0;
accel = 0.2;
deccel = 0.2; 

// State variables
waiting = false;
global.waitTimer = 60;
global.waitTimerReset = 60;
depth = -1;

// Task completion flags
global.task1_complete = false;
global.task1_completeGUI = false;
global.task2_complete = false;
global.task2_completeGUI = false;
global.task3_complete = false;
global.task3_completeGUI = true;
global.pillsTaken = true;
global.task4_complete = false;
global.task4_completeGUI = false;
global.task5_complete = false;
global.task5_completeGUI = false;
global.allTasksComplete = false;
global.otherTasksComplete = false;

// Speed reduction variables
speedMultiplier = 1;
reductionRate = 0.001;

// Create progress bar instance
progressBar = instance_create_layer(x - 1000, y, layer, obj_progressBar);
progressBar.depth = -999;

// Create alert instances for each task
task1Alert = instance_create_layer(x - 1000, y, layer, obj_taskAlert);
task1Alert.depth = -999;

task2Alert = instance_create_layer(x - 1000, y, layer, obj_taskAlert);
task2Alert.depth = -999;

task3Alert = instance_create_layer(x - 1000, y, layer, obj_taskAlert);
task3Alert.depth = -999;

task4Alert = instance_create_layer(x - 1000, y, layer, obj_taskAlert);
task4Alert.depth = -999;

task5Alert = instance_create_layer(x - 1000, y, layer, obj_taskAlert);
task5Alert.depth = -999;
