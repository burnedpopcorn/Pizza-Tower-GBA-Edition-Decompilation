function scr_collision() //gml_Script_scr_collision
{
    vsp += grav
    if (vsp > 15)
        vsp = 15
    if place_meeting(x, (y + vsp + 1), obj_solid)
        ground = 1
    else
        ground = 0
    if place_meeting((x + hsp), y, obj_solid)
    {
        while (!(place_meeting((x + sign(hsp)), y, obj_solid)))
            x += sign(hsp)
        hsp = 0
    }
    x += hsp
    if place_meeting(x, (y + vsp), obj_solid)
    {
        while (!(place_meeting(x, (y + sign(vsp)), obj_solid)))
            y += sign(vsp)
        vsp = 0
    }
    y += vsp
    while (place_meeting(x, y, obj_slope) && vsp >= 0)
    {
        y -= 1
        ground = 1
    }
    while (place_meeting(x, (y + hsp + 1), obj_slope) && (!(place_meeting(x, (y + 1), obj_slope))) && vsp >= 0)
    {
        y += 1
        ground = 1
    }
}

