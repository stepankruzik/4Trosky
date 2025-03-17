// 1. Kontrola, zda je myš nad tlačítkem
var _mouse_over = point_in_rectangle(mouse_x, mouse_y, x-50, y-25, x+50, y+25);

// 2. Kontrola odemknutí levelu
var _unlocked = (level_number == 1) || (global.completed_levels[level_number-2] >= 1);

// 3. Reakce na kliknutí
if (_mouse_over && _unlocked && mouse_check_button_pressed(mb_left)) {
    var next_room = asset_get_index("rm_level" + string(level_number));

    // Pokud level existuje, přejdi do něj
    if (next_room != -1) {
        room_goto(next_room);
    } else {
        // Pokud level neexistuje, přejdi do místnosti rm_end
        room_goto(rm_end);
    }
}

// 4. Reakce na zamčené levely
if (_mouse_over && !_unlocked) {
    draw_set_color(c_red);
    draw_text(mouse_x, mouse_y-20, "Level je zamčený!");
}
