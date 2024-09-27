function scr_player_tumble() //gml_Script_scr_player_tumble
{
    scr_collision()
    scr_getinput()
    mask_index = spr_player_tumblemask
    if place_meeting(x, (y + 1), obj_slope)
    {
        xscale = -1
        sprite_index = spr_player_tumble
        hsp = -2
        mask_index = spr_player_tumblemask
    }
    if place_meeting(x, (y + 1), obj_sloperight)
    {
        xscale = 1
        sprite_index = spr_player_tumble
        hsp = 2
        mask_index = spr_player_tumblemask
    }
    if (sprite_index == spr_player_tumble && key_jump2 && ground == 1)
    {
        vsp = -2.7
        ground = 0
        mask_index = spr_player_tumblemask
    }
    if (place_meeting((x + 1), y, obj_wall) && xscale == 1 && sprite_index == spr_player_tumble && (!(place_meeting((x + 1), y, obj_brick))) && (!(place_meeting((x + 1), y, obj_brickbig))))
    {
        state = 5
        hsp = -1.3
        vsp = -1
        mach = 0
        image_index = 0
        audio_sound_gain(sfx_bumpwall, 0.7, 0)
        if (!audio_is_playing(sfx_bumpwall))
            audio_play_sound(sfx_bumpwall, 1, false)
        can_controlself = 1
        mask_index = spr_player_mask
    }
    if (place_meeting((x - 1), y, obj_wall) && xscale == -1 && sprite_index == spr_player_tumble && (!(place_meeting((x - 1), y, obj_brick))) && (!(place_meeting((x - 1), y, obj_brickbig))))
    {
        state = 5
        hsp = 1.3
        vsp = -1
        mach = 0
        image_index = 0
        audio_sound_gain(sfx_bumpwall, 0.7, 0)
        if (!audio_is_playing(sfx_bumpwall))
            audio_play_sound(sfx_bumpwall, 1, false)
        can_controlself = 1
        mask_index = spr_player_mask
    }
}

