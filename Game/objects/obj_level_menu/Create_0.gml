if (!variable_global_exists("completed_levels")) {
    global.completed_levels = [];
}

if (!variable_instance_exists(id, "level_number")) {
    level_number = 1; // nebo jiná výchozí hodnota
}


enabled = false;