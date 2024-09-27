if (place_meeting(x, (y - 1), obj_player) && obj_player.vsp > 0)
{
    if (obj_player.state == 1)
    {
        if (global.panic == 0)
        {
            global.panic = 1
            image_speed = 0.175
            obj_player.frozen = 1
        }
    }
}
if (sprite_index == spr_frogswitch && image_index == 4)
{
    sprite_index = spr_frogswitchtimed
    alarm[0] = 5
}
