// Pohyb dolů
if (moving && !going_up) {
    var platform_speed = 4; 
    y += platform_speed; // Platforma jede dolů

    // Hráč jede s platformou dolů
    if (place_meeting(obj_player.x, obj_player.y + 1, obj_platformbutton)) {
        obj_player.y += platform_speed;
    }
    if (place_meeting(obj_player_2.x, obj_player_2.y + 1, obj_platformbutton)) {
        obj_player_2.y += platform_speed;
    }

    // Pokud platforma narazí na obj_ground, zastaví se
    if (place_meeting(x, y + 1, obj_ground)) {
        y -= platform_speed; // Vrátíme platformu o krok zpět, aby nepropadla
        moving = false;
    }
	 if (place_meeting(x, y + 1, obj_ground_brown)) {
        y -= platform_speed; // Vrátíme platformu o krok zpět, aby nepropadla
        moving = false;
    }
	 if (place_meeting(x, y + 1, obj_ice)) {
        y -= platform_speed; // Vrátíme platformu o krok zpět, aby nepropadla
        moving = false;
    }
}

// Pohyb nahoru
if (going_up) {
    var platform_speed = 4;
    y -= platform_speed; // Platforma jede nahoru

    // Hráč jede s platformou nahoru
    if (place_meeting(obj_player.x, obj_player.y + 1, obj_platformbutton)) {
        obj_player.y -= platform_speed;
    }
    if (place_meeting(obj_player_2.x, obj_player_2.y + 1, obj_platformbutton)) {
        obj_player_2.y -= platform_speed;
    }

    // Pokud platforma dosáhne původní polohy, zastaví se
    if (y <= start_y) {
        y = start_y;
        going_up = false;
    }
}

// ZABRÁNÍME, ABY PLATFORM KILLNULA HRÁČE, KDYŽ JE POD NÍ
if (place_meeting(x, y, obj_player)) {
    obj_player.y = y - obj_player.sprite_height; // Posune hráče nad platformu
}
if (place_meeting(x, y, obj_player_2)) {
    obj_player_2.y = y - obj_player_2.sprite_height; // Posune hráče nad platformu
}