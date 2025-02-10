// Nastav barvu kreslení na černou
draw_set_color(c_black);

// Nakreslí ikonu předmětu v levém horním rohu
draw_sprite(spr_counter_icon, 0, 10, 10);

// Nakreslí počet předmětů vedle ikony
draw_text(40, 20, string(global.item_count));
