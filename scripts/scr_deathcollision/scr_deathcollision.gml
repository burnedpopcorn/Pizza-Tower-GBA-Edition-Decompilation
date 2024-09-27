function scr_deathcollision() //gml_Script_scr_deathcollision
{
    vsp += grav
    if (vsp > 15)
        vsp = 15
    x += hsp
    y += vsp
}

