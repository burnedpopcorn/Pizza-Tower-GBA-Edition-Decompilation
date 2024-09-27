function scr_player_dash() //gml_Script_scr_player_dash
{
    scr_getinput()
    scr_collision()
    mach += 2
    hsp += (xscale * 0.1)
    sprite_index = spr_player_dash
    image_speed = 0.3
    if ((sprite_index == spr_player_dash && hsp >= 2.2) || hsp <= -2.2)
    {
        if (xscale == 1)
            hsp = 2.2
        if (xscale == -1)
            hsp = -2.2
    }
    if (!audio_is_playing(sfx_dash2))
        audio_play_sound(sfx_dash2, 10, true)
    if (mach >= 100)
    {
        mach = 100
        if (!instance_exists(obj_chargeeffect))
            instance_create(x, y, obj_chargeeffect)
        if (xscale == 1)
            hsp = 2.4
        if (xscale == -1)
            hsp = -2.4
        sprite_index = spr_player_dashmax
        image_speed = 0.32
        if (floor(image_index) == 0 && mach >= 100 && (!instance_exists(obj_mach3effect)))
            instance_create(x, y, obj_mach3effect)
    }
    if ((!instance_exists(obj_dashcloud)) && (floor(image_index) == 0 || floor(image_index) == 2 || floor(image_index) == 4) && mach >= 100)
        instance_create(x, y, obj_dashcloud)
    if (((!instance_exists(obj_cloudeffect)) && floor(image_index) == 0) || floor(image_index) == 2 || floor(image_index) == 4)
        instance_create(x, (y + 15), obj_cloudeffect)
    if (place_meeting((x + 1), y, obj_wall) && xscale == 1 && mach >= 100)
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
    if (place_meeting((x - 1), y, obj_wall) && xscale == -1 && mach >= 100)
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
    if (key_jump2 && ground == 1)
    {
        vsp = -2.7
        ground = 0
        audio_play_sound(sfx_jump, 10, false)
    }
    if (ground == 1 && (!key_attack) && mach < 100)
    {
        state = 0
        hsp = 0
        mach = 0
    }
    else if (ground == 1 && (!key_attack) && mach >= 100)
    {
        state = 4
        mach = 0
    }
    if ((mach < 100 && place_meeting((x + 1), y, obj_wall)) || place_meeting((x - 1), y, obj_wall))
        mach = 0
}

