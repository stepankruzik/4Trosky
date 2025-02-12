if (global.level_complete) {
    draw_set_color(c_black);
    draw_rectangle(200, 150, 660, 440, false); // černy obdélník jako tabulka
    draw_set_color(c_white);
    draw_text(350, 220, "Level dokoncen!");
    draw_text(350, 260, "Cas: " + string(global.level_time div room_speed) + " sekund");
    draw_text(350, 300, "Hrac 1 posbiral: " + string(global.item_count) + " predmetu");
    draw_text(350, 340, "Hrac 2 posbiral: " + string(global.item2_count) + " predmetu");
    draw_text(350, 400, "Stiskni Enter pro navrat do menu");
}