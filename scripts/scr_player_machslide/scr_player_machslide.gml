function scr_player_machslide() //gml_Script_scr_player_machslide
{
    scr_getinput()
    scr_collision()
    hsp = image_xscale * movespeed
    sprite_index = spr_player_machslide
    image_speed = 0.175
    if (movespeed > 0)
        movespeed -= 0.07
    if (floor(hsp) == 0)
    {
        state = 0
        hsp = 0
        mach = 0
        image_index = 0
    }
    if (place_meeting((x + 1), y, obj_wall) && xscale == 1)
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
    if (place_meeting((x - 1), y, obj_wall) && xscale == -1)
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
    if (place_meeting((x + 1), y, obj_brickbig) && xscale == 1)
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
    if (place_meeting((x - 1), y, obj_brickbig) && xscale == -1)
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

