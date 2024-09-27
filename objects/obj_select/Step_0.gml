if (selection == 0)
{
    x = 88
    y = 80
}
else if (selection == 1)
{
    x = 88
    y = 104
}
if (keyboard_check_pressed(vk_down) && selection == 0)
{
    selection = 1
    audio_play_sound(sfx_select, 10, false)
}
else if (keyboard_check_pressed(vk_up) && selection == 1)
{
    selection = 0
    audio_play_sound(sfx_select, 10, false)
}
if (keyboard_check_pressed(vk_return) || (keyboard_check_pressed(ord("Z")) && selection == 0 && (!audio_is_playing(sfx_collectgiantpizza))))
{
    instance_create(x, y, obj_titlefadeout)
    audio_play_sound(sfx_collectgiantpizza, 10, false)
    with (obj_wall)
        instance_destroy()
    with (obj_pepcooter)
        hspeed = -3
}
else if (keyboard_check_pressed(vk_return) || (keyboard_check_pressed(ord("Z")) && selection == 1))
    game_end()
