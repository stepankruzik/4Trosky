if (global.level_complete) {
    visible = true;
}

if (visible && alarm[0] <= 0 && keyboard_check_pressed(vk_enter)) {
    room_goto(rm_menu); // Přechod do menu
}
