// Gravitace
if (!place_meeting(x, y + 1, obj_ground) &&
    !place_meeting(x, y + 1, obj_ground_stone) &&
	!place_meeting(x, y + 1, obj_player) &&
	!place_meeting(x, y + 1, obj_player_2) &&
    !place_meeting(x, y + 1, obj_ground_stonefill)&&
    !place_meeting(x, y + 1, obj_ground_brown) &&
    !place_meeting(x, y + 1, obj_ice)&&
    !place_meeting(x, y + 1, obj_orange)&&
    !place_meeting(x, y + 1, obj_green)&&
    !place_meeting(x, y + 1, obj_gray)) {
    y += 4; // Rychlost pádu
}