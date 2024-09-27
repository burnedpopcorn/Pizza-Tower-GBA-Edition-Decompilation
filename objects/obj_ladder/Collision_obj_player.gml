scr_getinput()
with (obj_player)
{
    if (key_up && ladderbuffer == 0 && (state == 0 || state == 1) && state != 6 && state != 3)
        state = 9
}
