// Pokud je na tlačítku 1 hráč, hráč 2 nebo obj_ground_stone
if (place_meeting(x, y, obj_player) || 
    place_meeting(x, y, obj_player_2) || 
    place_meeting(x, y, obj_ground_stone)) 
{
    obj_platformbutton.moving = true;
    obj_platformbutton.going_up = false; // Platforma jede dolů

    // Změna spritu tlačítka na zmáčknutý
    sprite_index = spr_button_pressed;
}


// Pokud na tlačítku 1 už není žádný objekt, platforma se vrátí nahoru
if (!place_meeting(x, y, obj_player) && 
    !place_meeting(x, y, obj_player_2) && 
    !place_meeting(x, y, obj_ground_stone)) 
{
    obj_platformbutton.going_up = true;

    // Reset spritu tlačítka 1 na normální stav
    sprite_index = spr_button;
}


// Pokud je na tlačítku 1 nebo 2 hráč nebo objekt, platforma jede dolů
if (place_meeting(x, y, obj_player) || 
    place_meeting(x, y, obj_player_2) ||
    place_meeting(x, y, obj_ground_stone)) {
    // Změníme sprite na zmáčknutý
    sprite_index = spr_button_pressed;
    obj_platformbutton.y += 5;  // Pohyb platformy dolů
} else {
    // Pokud hráč opustil tlačítko, změň sprite zpět na původní
    sprite_index = spr_button;
    obj_platformbutton.y -= 5;  // Pohyb platformy nahoru
}
