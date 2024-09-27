function scr_player_bump() //gml_Script_scr_player_bump
{
    scr_getinput()
    scr_collision()
    mach = 0
    if (place_meeting(x, (y + 1), obj_solid) && vsp > 0)
        hsp = 0
    if (floor(image_index) == 6)
        state = 0
    sprite_index = spr_player_bump
    image_speed = 0.35
}

