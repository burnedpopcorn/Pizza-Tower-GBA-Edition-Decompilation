if (createdfadeout == 0)
{
    createdfadeout = 1
    instance_create(x, y, obj_fadeout4)
    audio_play_sound(sfx_door, 10, false)
}
