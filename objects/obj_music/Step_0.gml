if ((!audio_is_playing(mus_escape)) && global.panic == 1)
{
    audio_stop_all()
    scr_sound(15)
    pausedmusic = 15
}
