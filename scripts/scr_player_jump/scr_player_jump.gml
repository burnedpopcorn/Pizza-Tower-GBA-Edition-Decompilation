function scr_player_jump() //gml_Script_scr_player_jump
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
    if (ground == 1)
        state = 0
    if key_down
        state = 12
    if (floor(image_index) == (image_number - 1) && sprite_index == spr_player_jump)
        sprite_index = spr_player_fall
}

