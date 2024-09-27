scr_getinput()
if place_meeting(x, (y - 1), obj_player)
{
    with (obj_player)
    {
        if (place_meeting(x, (y + 1), obj_ladder) && key_down && state == 2 && place_meeting(x, (y + 1), obj_platform))
            state = 9
    }
}
