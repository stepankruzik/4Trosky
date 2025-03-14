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