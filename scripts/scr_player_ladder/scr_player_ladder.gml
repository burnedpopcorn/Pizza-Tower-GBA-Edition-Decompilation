function scr_player_ladder() //gml_Script_scr_player_ladder
{
    scr_getinput()
    hsp = 0
    if key_up
    {
        vsp = -0.8
        image_speed = 0.175
    }
    else if key_down
    {
        vsp = 1
        image_speed = 0.175
    }
    else if ((!key_down) || (!key_up))
        vsp = 0
    grav = 0
    mach = 0
    if (!(place_meeting(x, y, obj_ladder)))
        state = 0
    if (place_meeting(x, y, obj_ladder) && place_meeting(x, (y + 1), obj_solid))
    {
        state = 0
        sprite_index = spr_player_idle
        image_index = 0
    }
    if key_jump2
    {
        ladderbuffer = 20
        state = 1
        vsp = (-jumpspeed)
        sprite_index = spr_player_fall
    }
    if ((!key_up) && (!key_down))
        sprite_index = spr_player_ladder
    else if (key_down && (!key_up))
        sprite_index = spr_player_ladderdown
    else if ((!key_down) && key_up)
        sprite_index = spr_player_laddermove
    scr_collision()
}

