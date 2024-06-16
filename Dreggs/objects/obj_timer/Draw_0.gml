if (run and obj_dayManager.endDay = false)
{
	draw_sprite(spr_timerBox, 0, x, y);
	draw_set_font(fnt_timer);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_ext(x, y, text, stringHeight, boxWidth);
}