if (obj_player.can_gethurt == 1)
    obj_player.state = 6
if (bounced == 0)
{
    obj_player.vsp = -3
    alarm[0] = 7
    if (!audio_is_playing(sfx_hurt))
        audio_play_sound(sfx_hurt, 10, false)
    if (drained_points == 0)
    {
        global.collect -= 50
        alarm[1] = 10
        drained_points = 1
    }
}
