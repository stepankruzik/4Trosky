var on_ground = place_meeting(x, y + 1, obj_ground) || 
                place_meeting(x, y + 1, obj_ground_stone) ||
                place_meeting(x, y + 1, obj_ground_stonefill);

x_speed = 0;

if (keyboard_check(ord("A"))) {
    x_speed = -2;
}
else if (keyboard_check(ord("D"))) {
    x_speed = 2;
}

if ((keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W"))) && on_ground) {
    y_speed = -8;
}

y_speed += 0.4;

if (place_meeting(x + x_speed, y, obj_ground) || 
    place_meeting(x + x_speed, y, obj_ground_stone) || 
    place_meeting(x + x_speed, y, obj_ground_stonefill)) {
    x_speed = 0;
}

if (y_speed > 0 && (place_meeting(x, y + y_speed, obj_ground) || 
                    place_meeting(x, y + y_speed, obj_ground_stone) || 
                    place_meeting(x, y + y_speed, obj_ground_stonefill))) {
    y_speed = 0;
} else if (y_speed < 0 && (place_meeting(x, y + y_speed, obj_ground) || 
                           place_meeting(x, y + y_speed, obj_ground_stone) || 
                           place_meeting(x, y + y_speed, obj_ground_stonefill))) {
    y_speed = 0;
}

x += x_speed;
y += y_speed;