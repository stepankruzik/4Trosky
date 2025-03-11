draw_set_font(fnt_normal);

if (global.level_complete) {
    var x1 = 200, y1 = 150, x2 = 660, y2 = 440;
    
    // Stín pod tabulkou
    draw_set_alpha(0.3);
    draw_set_color(c_black);
    draw_roundrect(x1 + 6, y1 + 6, x2 + 6, y2 + 6, false);

    // Pozadí tabulky s gradientem
    draw_set_alpha(0.9);
    draw_set_color(make_color_rgb(40, 40, 40)); // Tmavší šedá nahoře
    draw_roundrect(x1, y1, x2, y2, false);
    draw_set_color(make_color_rgb(60, 60, 60)); // Světlejší šedá dole
    draw_roundrect(x1, y1 + 20, x2, y2, false);

    // Reset průhlednosti a zarovnání
    draw_set_alpha(1);
    draw_set_halign(fa_center);

    // Nastavení fontu, pokud existuje
    if (variable_global_exists("fnt_title")) {
        draw_set_font(global.fnt_title);
    }

    // Nadpis
    draw_set_color(c_white);
    draw_text(430, 170, "LEVEL DOKONČEN! ");

    // Normální text s kontrolou fontu
    if (variable_global_exists("fnt_normal")) {
        draw_set_font(global.fnt_normal);
    }

    // Lepší zarovnání textu a oprava překlepů
    draw_set_color(c_lime);
    draw_text(430, 230, "Čas: " + string(global.level_time div room_speed) + " sekund");

    draw_set_color(c_aqua);
    draw_text(430, 280, "Hráč 1 posbíral: " + string(global.item_count) + " předmětů");

    draw_set_color(c_orange);
    draw_text(430, 320, "Hráč 2 posbíral: " + string(global.item2_count) + " předmětů");

    // Animovaný text pro stisknutí Enteru
    var blink_color = make_color_hsv((current_time div 10) mod 360, 255, 255);
    draw_set_color(blink_color);
    draw_text(430, 380, "Stiskni Enter pro pokračování!");
}  