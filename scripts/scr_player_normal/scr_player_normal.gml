function scr_player_normal() //gml_Script_scr_player_normal
{
    scr_getinput()
    scr_collision()
    movespeed = hsp
    if key_left
    {
        hsp = (-movespeedmax)
        xscale = -1
        movespeed = movespeedmax
    }
    else if key_right
    {
        hsp = movespeedmax
        xscale = 1
        movespeed = movespeedmax
    }
    else if ((!key_left) || (!key_right))
    {
        hsp = 0
        movespeed = 0
    }
    if (sprite_index == spr_player_idle)
        image_speed = 0.175
    if (hsp == 0)
    {
        movespeed = 0
        idle = 1
    }
    else if (hsp != 0)
    {
        sprite_index = spr_player_move
        image_speed = 0.25
        idle = 0
    }
    if (idle == 1)
    {
        sprite_index = spr_player_idle
        image_speed = 0.175
    }
    if (key_jump2 && ground == 1)
    {
        state = 1
        vsp = (-jumpspeed)
        ground = 0
        audio_play_sound(sfx_jump, 10, false)
        sprite_index = spr_player_jump
        image_index = 0
    }
    if (((!instance_exists(obj_cloudeffect)) && floor(image_index) == 0) || floor(image_index) == 4)
        instance_create(x, (y + 15), obj_cloudeffect)
    if (key_attack && ground == 1 && grabbing == 0)
        state = 3
    if (key_down && ground == 1)
    {
        state = 2
        grabbing = 0
    }
    if (ground == 0 && sprite_index != spr_player_jump)
        sprite_index = spr_player_fall
    if place_meeting(x, y, obj_solid)
        state = 2
    if (place_meeting(x, (y + 1), obj_slope) || place_meeting(x, (y + 1), obj_sloperight))
    {
        if key_down
            state = 10
    }
}

