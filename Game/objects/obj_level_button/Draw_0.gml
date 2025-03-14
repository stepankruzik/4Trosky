var _unlocked = (level_number == 1) || (global.completed_levels[level_number-2] >= 1);

// Barva podle stavu
var _color = c_gray;
if (global.completed_levels[level_number-1] == 1) _color = c_green;
else if (_unlocked) _color = c_yellow;

// Animace při najetí myší
if (point_in_rectangle(mouse_x, mouse_y, x-50, y-25, x+50, y+25)) {
    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_rectangle(x-52, y-27, x+52, y+27, false); // Bílý rámeček
}

// Hlavní tlačítko
draw_set_alpha(0.8);
draw_set_color(_color);
draw_roundrect(x-50, y-25, x+50, y+25, false);

// Text
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text(x, y-8, "Level " + string(level_number));