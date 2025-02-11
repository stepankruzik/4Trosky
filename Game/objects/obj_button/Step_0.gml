if (place_meeting(x, y, obj_player) || 
    place_meeting(x, y, obj_player_2) || 
    place_meeting(x, y, obj_ground_stone)) 
{
    obj_platformbutton.moving = true;
    obj_platformbutton.going_up = false;
}

// Pokud na tlačítku už není žádný objekt, platforma se vrátí nahoru
if (!place_meeting(x, y, obj_player) && 
    !place_meeting(x, y, obj_player_2) && 
    !place_meeting(x, y, obj_ground_stone)) 
{
    obj_platformbutton.going_up = true;
}