var rows = 3;
var cols = 4;
var start_x = 300; // Posun začátku doprava
var start_y = 200;  // Posun začátku dolů
var spacing_x = 250;
var spacing_y = 150;

for (var i = 0; i < array_length(global.completed_levels); i++) {
    var btn = instance_create_layer(
        start_x + (i mod cols) * spacing_x,
        start_y + (i div cols) * spacing_y,
        "Instances",
        obj_level_button
    );
    btn.level_number = i + 1;
}