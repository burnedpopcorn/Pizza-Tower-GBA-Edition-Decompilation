if (global.panic == 1)
    timestop = 0
else
    timestop = 1
if (global.seconds < 0)
{
    global.seconds = 59
    global.minutes = global.minutes - 1
}
if (global.seconds > 59)
{
    global.minutes = global.minutes + 1
    global.seconds = global.seconds - 59
}
if (global.seconds == 0 && global.minutes == 0)
{
    if instance_exists(obj_player)
        obj_player.state = 7
    if (!audio_is_playing(sfx_hurt))
    {
        audio_play_sound(sfx_hurt, 10, false)
        audio_stop_sound(mus_escape)
    }
    visible = false
}
if keyboard_check_pressed(vk_f2)
{
    global.seconds = 5
    global.minutes = 0
}
if (room == rankroom)
{
    visible = false
    global.panic = 0
    audio_stop_sound(mus_escape)
}
