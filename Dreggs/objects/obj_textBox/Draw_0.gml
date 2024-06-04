draw_sprite(spr_textBox, 0, x, y);
draw_set_font(fnt_story);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_ext(x, y, text, stringHeight, boxWidth);