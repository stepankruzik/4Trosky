// Pokud je na tlačítku 1 hráč, hráč 2 nebo obj_ground_stone
if (place_meeting(x, y, obj_player) || 
    place_meeting(x, y, obj_player_2) || 
    place_meeting(x, y, obj_ground_stone)) 
{
    obj_platformbutton.moving = true;
    obj_platformbutton.going_up = false; // Platforma jede dolů

    // Změna spritu tlačítka na zmáčknutý
    sprite_index = spr_button2_pressed;
}

// Pokud je na tlačítku 2 hráč, hráč 2 nebo obj_ground_stone
if (place_meeting(obj_button2.x, obj_button2.y, obj_player) || 
    place_meeting(obj_button2.x, obj_button2.y, obj_player_2) || 
    place_meeting(obj_button2.x, obj_button2.y, obj_ground_stone)) 
{
    obj_platformbutton.moving = true;
    obj_platformbutton.going_up = false; // Platforma jede dolů

    // Změna spritu tlačítka 2 na zmáčknutý
    obj_button2.sprite_index = spr_button2_pressed;
}

// Pokud na tlačítku 1 už není žádný objekt, platforma se vrátí nahoru
if (!place_meeting(x, y, obj_player) && 
    !place_meeting(x, y, obj_player_2) && 
    !place_meeting(x, y, obj_ground_stone)) 
{
    obj_platformbutton.going_up = true;

    // Reset spritu tlačítka 1 na normální stav
    sprite_index = spr_button2;
}

// Pokud na tlačítku 2 už není žádný objekt, platforma se vrátí nahoru
if (!place_meeting(obj_button2.x, obj_button2.y, obj_player) && 
    !place_meeting(obj_button2.x, obj_button2.y, obj_player_2) && 
    !place_meeting(obj_button2.x, obj_button2.y, obj_ground_stone)) 
{
    obj_button2.sprite_index = spr_button2;
}

// Pokud je na tlačítku 1 nebo 2 hráč nebo objekt, platforma jede dolů
if (place_meeting(x, y, obj_player) || 
    place_meeting(x, y, obj_player_2) ||
    place_meeting(x, y, obj_ground_stone) || 
    place_meeting(obj_button2.x, obj_button2.y, obj_player) || 
    place_meeting(obj_button2.x, obj_button2.y, obj_player_2) || 
    place_meeting(obj_button2.x, obj_button2.y, obj_ground_stone)) {
    // Změníme sprite na zmáčknutý
    sprite_index = spr_button2_pressed;
    obj_platformbutton.y += 5;  // Pohyb platformy dolů
} else {
    // Pokud hráč opustil tlačítko, změň sprite zpět na původní
    sprite_index = spr_button2;
    obj_platformbutton.y -= 5;  // Pohyb platformy nahoru
}
