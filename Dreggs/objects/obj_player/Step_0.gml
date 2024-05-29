key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));

key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));

if (key_right - key_left == 0)
{
	currentXSpeed *= deccel; 
}
else
{
	currentXSpeed += (key_right - key_left) * accel;
}

if (key_down - key_up == 0)
{
	currentYSpeed *= deccel;
}
else
{
	currentYSpeed += (key_down - key_up) * accel;
}

if (abs(currentXSpeed) > maxSpeed)
{
	currentXSpeed = maxSpeed * sign(currentXSpeed);	
}

if (abs(currentYSpeed) > maxSpeed)
{
	currentYSpeed = maxSpeed * sign(currentYSpeed);	
}

if ( keyboard_check_pressed(ord("A")))
{
	image_xscale = -1;	
}

if ( keyboard_check_pressed(ord("D")))
{
	image_xscale = 1;	
}

if (place_free(x + currentXSpeed, y))
{
	x += currentXSpeed;
}

if (place_free(x, y + currentYSpeed))
{
	y += currentYSpeed;
}


if (keyboard_check(ord("A"))) {
   playerFacing = 180;
} 
else if (keyboard_check(ord("D"))) {
   playerFacing = 0;
}


// Change the sprite of obj_task1 when within a certain distance and E is pressed
var obj = instance_nearest(x, y, obj_task1); // Get the nearest instance of obj_task1
var dist = point_distance(x, y, obj.x, obj.y); // Calculate distance to that instance

if (keyboard_check_pressed(ord("E")) && dist <= 50) {
    obj.sprite_index = spr_dogBowlFull; // Change the sprite
    show_debug_message("Sprite changed to spr_dogBowlFull");
}