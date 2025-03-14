for (var i = 0; i < level_count; i++) {
    var x = buttons[i][0];
    var y = buttons[i][1];

    if (mouse_x > x - 30 && mouse_x < x + 30 && mouse_y > y - 30 && mouse_y < y + 30) {
        room_goto(rm_level[i]); // Přechod do levelu
    }
}
