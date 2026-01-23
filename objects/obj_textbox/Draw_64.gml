draw_set_colour(box_colour);
draw_roundrect(x, y, x+width, y+height, false);
draw_set_colour(text_colour);
draw_set_font(font);
draw_sprite(talking, 0, x + margin, y + margin);
draw_text_ext(x+ (2*margin) + sprite_size, y+margin, string_copy(texts[text_index], 1, current_text_progress), -1, width-2*margin);
