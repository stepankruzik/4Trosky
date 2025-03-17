// Získání velikosti obrazovky
var text_x = display_get_gui_width() / 2;
var text_y1 = display_get_gui_height() / 3 - 20;
var text_y2 = display_get_gui_height() / 2;
var text_y3 = display_get_gui_height() * 2 / 3 + 20;
var text_y4 = display_get_gui_height() - 80; // Umístění autorů dole

// Nastavení zarovnání
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Nastavení fontů
draw_set_font(fnt_normal); // Větší font pro hlavní text

// Černý outline (větší pro lepší čitelnost)
draw_set_color(c_black);
for (var dx = -3; dx <= 3; dx += 2) {
    for (var dy = -3; dy <= 3; dy += 2) {
        draw_text(text_x + dx, text_y1 + dy, "Děkujeme, že jste si zahráli Fireflow!");
        draw_text(text_x + dx, text_y2 + dy, "Doufáme, že jste si hru užili!");
        draw_text(text_x + dx, text_y3 + dy, "Klikněte na šipku pro návrat do menu.");
    }
}

// Hlavní text (bílý)
draw_set_color(c_white);
draw_text(text_x, text_y1, "Děkujeme, že jste si zahráli Fireflow!");
draw_text(text_x, text_y2, "Doufáme, že jste si hru užili!");
draw_text(text_x, text_y3, "Klikněte na šipku pro návrat do menu.");

// Font pro autory (menší a decentní)
draw_set_font(fnt_normal);
draw_set_color(c_black);
for (var dx = -2; dx <= 2; dx += 2) {
    for (var dy = -2; dy <= 2; dy += 2) {
        draw_text(text_x + dx, text_y4 + dy, "Autoři: Jakub Janda, Štěpán Kružík");
    }
}
draw_set_color(c_gray);
draw_text(text_x, text_y4, "Autoři: Jakub Janda, Štěpán Kružík");
