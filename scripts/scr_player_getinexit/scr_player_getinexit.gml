function scr_player_getinexit() //gml_Script_scr_player_getinexit
{
    scr_getinput()
    if (room != translationroom)
    {
        x = obj_exitgate.x
        y = obj_exitgate.y
        image_alpha -= 0.01
        if (image_alpha == 0)
            alarm[5] = 27
        sprite_index = spr_player_deadspinright
        image_speed = 0.145
    }
}

