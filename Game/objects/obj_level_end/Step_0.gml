if (global.level_complete) {
    visible = true;
}

if (visible && alarm[0] <= 0 && keyboard_check_pressed(vk_enter)) {
    room_goto(rm_level_select); // Místo rm_menu
}

// V CREATE EVENT obj_level_end přidej:
var room_name = room_get_name(room);
current_level = real(string_replace(room_name, "rm_level", "")); // Předpokládá formát "rm_levelX"

// Označ aktuální level jako dokončený
if (current_level <= array_length(global.completed_levels)) {
    global.completed_levels[current_level-1] = 1;
}

// Odemkni následující level
var next_level = current_level + 1;
if (next_level <= array_length(global.completed_levels)) {
    global.completed_levels[next_level-1] = max(global.completed_levels[next_level-1], 0.5); // 0.5 = odemčený
}


show_debug_message("Alarm: " + string(alarm[0]) + ", Visible: " + string(visible));