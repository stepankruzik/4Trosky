// Kontrola, jestli je hráč 1 u dveří
if (place_meeting(x, y, obj_player)) {
    if (sprite_index != spr_door_player_open) {  
        sprite_index = spr_door_player_open;  
        image_index = 0;
        image_speed = 0.1;
    }
    
    // Uložíme, že hráč 1 je připraven
    global.player1_ready = true;
} else {
    if (sprite_index != spr_door_player) {
        sprite_index = spr_door_player;  
        image_index = 0;
        image_speed = 0; // Zastaví animaci
    }
    
    global.player1_ready = false;
}

// Pokud jsou oba hráči připraveni, přejdi do další místnosti
if (global.player1_ready && global.player2_ready) {
    room_goto_next();
}
