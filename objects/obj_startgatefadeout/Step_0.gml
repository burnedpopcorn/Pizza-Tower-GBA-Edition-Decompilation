if (fadealpha > 1)
{
    fadein = 1
    if (room != obj_startgate.targetRoom)
        room_goto(obj_startgate.targetRoom)
    with (obj_player)
    {
        y = obj_startgate.targetY
        x = obj_startgate.targetX
        targetRoom = obj_startgate.targetRoom
    }
}
if (fadein == 0)
    fadealpha += 0.1
else if (fadein == 1)
    fadealpha -= 0.1
if (fadein == 1 && fadealpha < 0)
    instance_destroy()
