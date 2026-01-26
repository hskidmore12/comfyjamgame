draw_sprite(spr_stars_big, global.stars - 1, 543, 158);
draw_text(191, 143, string(global.final_score));
draw_text(191, 153, "Total Score: ");
draw_text(191, 196, "Level Score: ");
draw_text(191, 206, string(global.current_level_score));