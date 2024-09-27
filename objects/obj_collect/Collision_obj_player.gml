if (cantcollect == 0)
{
    global.collect += 10
    audio_sound_gain(sfx_collect, 0.7, 0)
    audio_play_sound(sfx_collect, 1, false)
    instance_destroy()
    instance_create(x, y, obj_10)
}
