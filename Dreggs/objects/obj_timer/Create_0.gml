timeLeft = 30;
run = false;
canAlarm = true;
text = "time until meeting: " + string(timeLeft);
boxWidth = sprite_get_width(spr_timerBox);
stringHeight = string_height(text);
fading = false;
depth = -3;