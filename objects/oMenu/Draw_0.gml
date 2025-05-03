draw_set_font(-1);
draw_set_color(c_white);

draw_text(100, 100, "SLIME GAME MENU");

if selected == 0 {
    draw_text(100, 150, "> Start Game");
    draw_text(100, 180, "  Quit");
} else {
    draw_text(100, 150, "  Start Game");
    draw_text(100, 180, "> Quit");
}
