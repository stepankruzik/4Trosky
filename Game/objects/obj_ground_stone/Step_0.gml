// Gravitace
if (!place_meeting(x, y + 1, obj_ground) &&
    !place_meeting(x, y + 1, obj_ground_stone) &&
    !place_meeting(x, y + 1, obj_ground_stonefill)) {
    y += 4; // Rychlost pádu
}