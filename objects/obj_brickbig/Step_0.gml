if (place_meeting((x + 1), y, obj_player) || place_meeting((x - 1), y, obj_player))
{
    if (obj_player.state == 3 || obj_player.state == 10)
    {
        instance_destroy()
        if (obj_player.state == 12)
        {
            obj_player.sprite_index = spr_player_bodyslamland
            obj_player.alarm[0] = 15
            obj_player.vsp = 0
        }
    }
}
if place_meeting(x, (y + 1), obj_player)
{
    if (obj_player.ground == 0)
        instance_destroy()
}
if place_meeting(x, (y + 1), obj_playerbodyslamhitbox)
    instance_destroy()
if place_meeting(x, y, obj_rock)
{
    if (obj_rock.thrown == 1)
        instance_destroy()
}
