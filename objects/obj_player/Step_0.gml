if (frozen == 0)
{
    scr_getinput()
    if (state != 7)
        scr_collision()
    with (obj_player)
    {
        switch state
        {
            case 0:
                scr_player_normal()
                break
            case 1:
                scr_player_jump()
                break
            case 2:
                scr_player_crouch()
                break
            case 3:
                scr_player_dash()
                break
            case 4:
                scr_player_machslide()
                break
            case 5:
                scr_player_bump()
                break
            case 6:
                scr_player_hurt()
                break
            case 7:
                scr_player_death()
                break
            case 8:
                scr_player_getinexit()
                break
            case 9:
                scr_player_ladder()
                break
            case 10:
                scr_player_tumble()
                break
            case 11:
                scr_player_entrance()
                break
            case 12:
                scr_player_bodyslam()
                break
        }

    }
}
else
{
    hsp = 0
    vsp = 0
}
if (state != 3)
    audio_stop_sound(sfx_dash2)
if (state != 6)
    hurt_timer = 50
if (global.collect < 0)
    global.collect = 0
if (dev_controls == 1)
{
    if (keyboard_check_pressed(vk_f11) && global.panic == 0)
        global.panic = 1
    else if (keyboard_check_pressed(vk_f11) && global.panic == 1)
        global.panic = 0
}
if (ground == 1 && grabbing == 1 && key_down2)
    grabbing = 0
if (state != 9)
{
    ladderbuffer = 0
    grav = 0.1
}
if (state != 12)
{
    groundpound_timer = 25
    freefall = 20
    with (obj_playerbodyslamhitbox)
        instance_destroy()
    with (obj_playerbodyslamhardhitbox)
        instance_destroy()
    sound_played = 0
}
if keyboard_check_pressed(ord("P"))
    state = 7
