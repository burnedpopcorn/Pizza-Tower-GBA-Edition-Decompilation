if (place_meeting((x + 1), y, obj_player) || place_meeting((x - 1), y, obj_player))
{
    if (obj_player.state == 3 && obj_player.mach >= 100)
        instance_destroy()
}
if (place_meeting((x + 1), y, obj_player) && obj_player.xscale == 1)
{
    if (obj_player.state == 3 && obj_player.mach < 100)
    {
        with (obj_player)
        {
            state = 5
            hsp = -1.3
            vsp = -1
            mach = 0
            image_index = 0
            audio_sound_gain(sfx_bumpwall, 0.7, 0)
            if (!audio_is_playing(sfx_bumpwall))
                audio_play_sound(sfx_bumpwall, 1, false)
        }
    }
}
if (place_meeting((x - 1), y, obj_player) && obj_player.xscale == -1)
{
    if (obj_player.state == 3 && obj_player.mach < 100)
    {
        with (obj_player)
        {
            state = 5
            hsp = 1.3
            vsp = -1
            mach = 0
            image_index = 0
            audio_sound_gain(sfx_bumpwall, 0.7, 0)
            if (!audio_is_playing(sfx_bumpwall))
                audio_play_sound(sfx_bumpwall, 1, false)
        }
    }
}
if place_meeting(x, (y + 1), obj_playerbodyslamhardhitbox)
    instance_destroy()
