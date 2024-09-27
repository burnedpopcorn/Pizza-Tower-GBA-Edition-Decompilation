function scr_player_hurt() //gml_Script_scr_player_hurt
{
    scr_getinput()
    scr_collision()
    sprite_index = spr_player_hurt
    if (sprite_index == spr_player_hurt)
        hsp = (-xscale) * 1.4
    if (hsp > 0)
        hsp -= 0.1
    mach = 0
    bounce = 0
    hurted = 1
    if (ground == 1)
        vsp = -1
    if place_meeting((x + hsp), y, obj_solid)
        xscale *= -1
    image_speed = 0.175
    hurt_timer--
    if (hurt_timer == 0)
    {
        state = 0
        hurted = 0
        alarm[8] = 0
    }
}

