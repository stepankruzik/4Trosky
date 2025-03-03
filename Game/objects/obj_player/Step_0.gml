var on_ground = place_meeting(x, y + 1, obj_ground) || 
                place_meeting(x, y + 1, obj_ground_stone) ||
				place_meeting(x, y + y_speed, obj_platformbutton) ||
				place_meeting(x, y + 1, obj_ground_stonefill) ||
				place_meeting(x, y + 1, obj_ground_brown)||
				place_meeting(x, y + 1, obj_ice)||
				place_meeting(x, y + 1, obj_orange);

x_speed = 0;


// Pohyb vlevo nebo vpravo
if (keyboard_check(ord("A"))) {
    x_speed = -2;
	sprite_index = spr_player_walk;
}
else if (keyboard_check(ord("D"))) {
    x_speed = 2;
	sprite_index = spr_player_walk;
}

sprite_index = spr_player;

if ((keyboard_check_pressed(ord("W"))) && on_ground) {
    y_speed = -8; // Skok
}

// Gravitace
y_speed += 0.4;

// Kolize na ose X (včetně tlačení kamene)
if (place_meeting(x + x_speed, y, obj_ground) || 
    place_meeting(x + x_speed, y, obj_ground_stonefill) || 
    place_meeting(x + x_speed, y, obj_ground_brown)|| 
    place_meeting(x + x_speed, y, obj_ice)| 
    place_meeting(x + x_speed, y, obj_orange)) {
    x_speed = 0; // Zabránění průchodu pevnými objekty
}

// Tlačení kamene (obj_ground_stone)
if (place_meeting(x + x_speed, y, obj_ground_stone)) {
    var stone = instance_place(x + x_speed, y, obj_ground_stone);
    if (stone != noone) {
        // Pokud je před kamenem volné místo, posuň ho
        if (!place_meeting(stone.x + x_speed, stone.y, obj_ground) &&
			!place_meeting(stone.x + x_speed, stone.y, obj_player) &&
			!place_meeting(stone.x + x_speed, stone.y, obj_platformbutton) &&
			!place_meeting(stone.x + x_speed, stone.y, obj_player_2) && 
            !place_meeting(stone.x + x_speed, stone.y, obj_ground_stonefill)&& 
            !place_meeting(stone.x + x_speed, stone.y, obj_ground_brown)&& 
            !place_meeting(stone.x + x_speed, stone.y, obj_ice)&& 
            !place_meeting(stone.x + x_speed, stone.y, obj_orange)) {
            stone.x += x_speed; // Posuň kámen
        } else {
            x_speed = 0; // Nemůžeme kámen posunout
        }
    }
}

// Kolize na ose Y (gravitace)
if (y_speed > 0 && (place_meeting(x, y + y_speed, obj_ground) || 
                    place_meeting(x, y + y_speed, obj_ground_stone) ||
					place_meeting(x, y + y_speed, obj_platformbutton) ||
                    place_meeting(x, y + y_speed, obj_ground_stonefill)||
					place_meeting(x, y + y_speed, obj_platformbutton) ||
                    place_meeting(x, y + y_speed, obj_ground_brown)||
                    place_meeting(x, y + y_speed, obj_ice)||
                    place_meeting(x, y + y_speed, obj_orange))) {
    y_speed = 0; // Zastavení pohybu při dopadu
} else if (y_speed < 0 && (place_meeting(x, y + y_speed, obj_ground) || 
                           place_meeting(x, y + y_speed, obj_ground_stone) ||
						   place_meeting(x, y + y_speed, obj_platformbutton) ||
                           place_meeting(x, y + y_speed, obj_ground_stonefill)||
						   place_meeting(x, y + y_speed, obj_platformbutton) ||
						   place_meeting(x, y + y_speed, obj_ground_brown)||
						   place_meeting(x, y + y_speed, obj_ice)||
						   place_meeting(x, y + y_speed, obj_orange))) {
    y_speed = 0; // Zastavení pohybu při nárazu hlavou
}

// Pokud se hráč nachází v platformě, posuneme ho nahoru
if (place_meeting(x, y, obj_platformbutton)) {
    move_outside_solid(270, 1); // 270° = posun nahoru
}

// Kontrola, jestli postava vstoupila na obj_water
if (place_meeting(x, y, obj_water)) {
    instance_destroy(); // Zničí instanci postavy
    // Alternativně můžete restartovat místnost:
    // room_restart();
}


// Aktualizace pozice postavy
x += x_speed;
y += y_speed;

if (!instance_exists(obj_player) || !instance_exists(obj_player_2)) {
    room_restart(); // Restart místnosti, pokud obě postavy zemřely
}

// když skočí na spike tak reset room 
if (place_meeting(x, y, obj_spike)) {
    room_restart();
}