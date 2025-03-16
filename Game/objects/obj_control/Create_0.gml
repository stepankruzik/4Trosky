global.player1_ready = false;
global.player2_ready = false;

global.level_time = 0; // Inicializace časovače
global.level_complete = false; // Indikátor dokončení levelu


if (!variable_global_exists("completed_levels")) {
    global.completed_levels = array_create(10, 0); // Pro 10 levelů
    global.completed_levels[0] = 0.5; // První level odemčen
}

if (!variable_global_exists("completed_levels")) {
    global.completed_levels = [];
}

// Inicializace globální proměnné pro pauzu a uložení aktuální místnosti
global.room_paused = false; // Nastaví pauzu na false (hra není na pauze)
global.current_room = room; // Uloží aktuální místnost

// Globální proměnná pro uložení aktuální místnosti
if (!global.room_paused) {
    global.current_room = room; // Uložíme název aktuální místnosti
}
