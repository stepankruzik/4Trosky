if (place_meeting(x, y, obj_player_2)) {
    // Přidej 1 bod k počítadlu
    global.item2_count += 1;
audio_play_sound(snd_pickeditem, 1, false); 
    // Znič objekt (zmizí z místnosti)
    instance_destroy();
}