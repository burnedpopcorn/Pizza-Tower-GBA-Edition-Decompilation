if (global.panic == 0)
{
    var roomname = room_get_name(room)
    if (room == title_screen)
    {
        if (!audio_is_playing(mus_title))
        {
            audio_stop_all()
            scr_sound(17)
            pausedmusic = 17
        }
    }
    if (room == rankroom)
    {
        if (!audio_is_playing(mus_victory))
        {
            audio_stop_all()
            scr_sound(16)
            pausedmusic = 16
        }
    }
    if (string_letters(roomname) == "hubroom" || string_letters(roomname) == "trapscreen")
    {
        if (!audio_is_playing(mus_hub))
        {
            audio_stop_all()
            scr_sound(18)
            pausedmusic = 18
        }
    }
    if (string_letters(roomname) == "testroom")
    {
        if (!audio_is_playing(mus_coldspaghetti))
        {
            audio_stop_all()
            scr_sound(0)
            pausedmusic = 0
        }
    }
}
