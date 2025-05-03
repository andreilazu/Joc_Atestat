// Death delay logic
if is_dead {
    death_timer -= 1;
    if death_timer <= 0 {
        room_restart();
    }
    exit; // Stop movement while dead
}

ysp += 0.1;
xsp = 0;

if keyboard_check(vk_left) {
    xsp = -2;
}
if keyboard_check(vk_right) {
    xsp = +2;
}

// Standing on solid ground
if place_meeting(x, y + 1, oSolid) {
    ysp = 0;
    if keyboard_check(vk_up) {
        ysp = -4;
        audio_play_sound(snd_jump, 1, false);
    }
}

// Move and collide with all solids
move_and_collide(xsp, ysp, oSolid);

// Spikes kill
if place_meeting(x, y + 1, oSpikes) {
    is_dead = true;
    death_timer = 60; // 60 steps = 1 second
    audio_play_sound(snd_death, 1, false);
}

// Flag reached
if place_meeting(x, y + 1, oFlag) {
    room_goto_next();
}

// Fell off the planet
if y > room_height {
    is_dead = true;
    death_timer = 60;
    audio_play_sound(snd_death, 1, false);
}

// Bounce on slime
if place_meeting(x, y + 1, oSlime_1) {
    ysp = -7;
    instance_destroy(oGround2);
    instance_destroy(oSpikes);
    instance_destroy(oFlag);
    instance_destroy(oSlime);
	audio_play_sound(snd_slime_jump, 1, false);
}
if place_meeting(x, y + 1, oSlime) {
    ysp = -7;
	audio_play_sound(snd_slime_jump, 1, false);
}
