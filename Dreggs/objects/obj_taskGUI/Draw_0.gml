
draw_set_color(c_white); // You can change the color if needed

draw_set_font(fnt_tasks);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
// Draw Task 1 completion status
draw_text(x, y + 70, string(task1));
draw_text(x, y + 50, string(task2));
draw_text(x, y + 30, string(task3));
draw_text(x, y + 10, string(task4));
draw_text(x, y - 10, string(task5));
