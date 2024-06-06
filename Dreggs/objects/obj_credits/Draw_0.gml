draw_sprite(spr_textBox, 0, x, y);
draw_set_font(fnt_credits);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_ext(x, y, text, stringHeight, boxWidth);