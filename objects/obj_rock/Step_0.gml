if (grabbed == 0)
    scr_collision()
if (place_meeting((x + 1), y, obj_player) && can_collide == 1)
{
    if (obj_player.state == 0 && obj_player.ground == 1)
    {
        grabbed = 1
        obj_player.grabbing = 1
    }
}
if (grabbed == 1)
{
    x = obj_player.x
    y = obj_player.y - 8
    hsp = obj_player.hsp
    vsp = obj_player.vsp
}
if (obj_player.grabbing == 0 && grabbed == 1)
{
    grabbed = 0
    can_collide = 0
}
if (obj_player.grabbing == 1 && grabbed == 1 && obj_player.key_punch2 && thrown == 0)
{
    hsp = obj_player.xscale * 2.3
    vsp = -3
    thrown = 1
    grabbed = 0
}
if (thrown == 1 && ground == 1)
    thrown = 0
if (ground == 1)
    can_collide = 1
if (grabbed == 1 && obj_player.key_right && obj_player.key_punch2 && obj_player.ground == 1)
{
    can_collide = 0
    hsp = 7
    vsp = 0
    thrown = 1
}
if (grabbed == 1 && obj_player.key_left && obj_player.key_punch2 && obj_player.ground == 1)
{
    can_collide = 0
    hsp = -7
    vsp = 0
    thrown = 1
}
