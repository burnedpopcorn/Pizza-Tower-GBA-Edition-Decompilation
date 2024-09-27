global.collect += 100
audio_sound_gain(sfx_collectgiantpizza, 0.7, 0)
audio_play_sound(sfx_collectgiantpizza, 1, false)
instance_destroy()
instance_create(x, y, obj_100)
