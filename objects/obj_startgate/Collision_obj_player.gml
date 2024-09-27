scr_getinput()
if (createdfadeout == 0 && key_up2 && obj_player.ground == 1)
{
    createdfadeout = 1
    instance_create(x, y, obj_startgatefadeout)
    audio_play_sound(sfx_door, 10, false)
}
