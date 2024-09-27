function scr_player_entrance() //gml_Script_scr_player_entrance
{
    scr_getinput()
    scr_collision()
    image_alpha += 0.01
    if (image_alpha == 1)
        image_alpha = 1
    if (ground == 1)
        state = 0
    sprite_index = spr_player_deadspinleft
    image_speed = 0.145
}

