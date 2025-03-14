// CREATE EVENT
var cols = 3; // Počet sloupců
var start_x = 200;
var start_y = 150;
var spacing_x = 300; // Horizontální rozestup
var spacing_y = 150;

// Smazat stará tlačítka před generováním nových
with (obj_level_button) {
    instance_destroy();
}

// Generuj tlačítka pro všechny levely
for (var i = 0; i < array_length(global.completed_levels); i++) {
    var col = i mod cols;
    var row = i div cols;
    
    instance_create_layer(
        start_x + col * spacing_x,
        start_y + row * spacing_y,
        "UI",
        obj_level_button
    ).level_number = i + 1; // Level 1 má i=0 => level_number=1
}
