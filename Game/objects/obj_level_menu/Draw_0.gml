// 1 = dokončeno, 0.5 = odemčeno, 0 = zamčeno
var _state = global.completed_levels[level_number-1];
var _color = c_gray;

if (_state == 1) {
    _color = c_green;
} else if (_state == 0.5) {
    _color = c_yellow;
}

// Zablokuj klikání na neodemčené levely
enabled = (_state > 0);
