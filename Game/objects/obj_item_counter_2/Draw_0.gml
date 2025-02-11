// Nastav barvu kreslení na černou
draw_set_color(c_black);

// Nakreslí ikonu předmětu v levém horním rohu
draw_sprite(spr_counter_icon_2, 0, 10, 40);

// Nakreslí počet předmětů vedle ikony
draw_text(40, 50, string(global.item2_count));
