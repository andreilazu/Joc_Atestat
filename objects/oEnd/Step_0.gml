// Navigate menu
if keyboard_check_pressed(vk_down) {
    selected = (selected + 1) mod 2;
}
if keyboard_check_pressed(vk_up) {
    selected = (selected - 1 + 2) mod 2;
}

// Select option
if keyboard_check_pressed(vk_enter) {
        game_end();
}
