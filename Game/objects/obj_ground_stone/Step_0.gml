// Gravitace
if (!place_meeting(x, y + 1, obj_ground) &&
    !place_meeting(x, y + 1, obj_ground_stone) &&
	!place_meeting(x, y + 1, obj_player) &&
	!place_meeting(x, y + 1, obj_player_2) &&
    !place_meeting(x, y + 1, obj_ground_stonefill)) {
    y += 4; // Rychlost pádu
}