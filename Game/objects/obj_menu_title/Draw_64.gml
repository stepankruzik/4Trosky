
draw_set_halign(fa_center); // Zarovnání na střed
draw_set_valign(fa_top);

// Pozice textu
var _x = display_get_gui_width() / 2;
var _y = 50;

// Stín textu
draw_set_color(c_black);
draw_text(_x + 3, _y + 3, "MENU");

// Hlavní text
draw_set_color(c_white);
draw_text(_x, _y, "MENU");

// Resetovat vlastnosti
draw_set_halign(fa_left);
draw_set_valign(fa_top);
