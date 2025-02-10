if (place_meeting(x, y, obj_player)) {
    // Přidej 1 bod k počítadlu
    global.item_count += 1;

    // Znič objekt (zmizí z místnosti)
    instance_destroy();
}