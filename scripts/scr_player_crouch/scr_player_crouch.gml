function scr_player_crouch() //gml_Script_scr_player_crouch
{
    scr_getinput()
    scr_collision()
    if key_down
    {
        mask_index = spr_crouchmask
        if (hsp == 0)
            sprite_index = spr_player_crouch
        if key_left
        {
            hsp = -0.5
            sprite_index = spr_player_crawl
            image_speed = 0.175
            xscale = -1
        }
        else if key_right
        {
            hsp = 0.5
            sprite_index = spr_player_crawl
            image_speed = 0.175
            xscale = 1
        }
        else if ((!key_left) || (!key_right))
            hsp = 0
        if (key_jump2 && ground == 1)
        {
            vsp = -2.6
            ground = 0
            audio_play_sound(sfx_jump, 10, false)
            sprite_index = spr_player_crouchjump
        }
        if (ground == 0)
            sprite_index = spr_player_crouchjump
        if (place_meeting(x, (y + 1), obj_solid) && state == 2 && (!key_down) && ground == 1)
        {
            state = 2
            sprite_index = spr_player_crouch
        }
        else if ((!(place_meeting(x, (y + 1), obj_solid))) && state == 2 && (!key_down) && ground == 1)
        {
            state = 0
            mask_index = spr_player_mask
        }
        if (place_meeting(x, y, obj_slope) || place_meeting(x, y, obj_sloperight))
            state = 10
    }
    else if ((!key_down) && ground == 1 && (!(place_meeting(x, (y - 3), obj_solid))))
    {
        state = 0
        mask_index = spr_player_mask
    }
    if (place_meeting(x, (y - 3), obj_solid) && (!key_down))
    {
        state = 2
        mask_index = spr_crouchmask
    }
}

