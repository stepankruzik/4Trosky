// Kontrola, jestli je hráč 2 u dveří
if (place_meeting(x, y, obj_player_2)) {
    if (sprite_index != spr_door_player2_open) {  
        sprite_index = spr_door_player2_open;  
        image_index = 0;
        image_speed = 0.1;
    }
    
    // Uložíme, že hráč 2 je připraven
    global.player2_ready = true;
} else {
    if (sprite_index != spr_door_player_2) { // Nastavení zavřených dveří
        sprite_index = spr_door_player_2;  
        image_index = 0;
        image_speed = 0; // Zastaví animaci
    }
    
    global.player2_ready = false;
}

// Pokud jsou oba hráči připraveni, přejdi do další místnosti
if (global.player1_ready && global.player2_ready) {
    room_goto_next();
}
