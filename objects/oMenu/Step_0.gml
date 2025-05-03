// Navigate menu
if keyboard_check_pressed(vk_down) {
    selected = (selected + 1) mod 2;
}
if keyboard_check_pressed(vk_up) {
    selected = (selected - 1 + 2) mod 2;
}

// Select option
if keyboard_check_pressed(vk_enter) {
    if selected == 0 {
        room_goto(Room1); // replace with your actual game room name
    } else if selected == 1 {
        game_end();
    }
}
