if (fadealpha > 1)
{
    fadein = 1
    if (room != obj_hallway4.targetRoom)
        room_goto(obj_hallway4.targetRoom)
    with (obj_player)
    {
        y = obj_hallway4.targetY
        x = obj_hallway4.targetX
        targetRoom = obj_hallway4.targetRoom
    }
}
if (fadein == 0)
    fadealpha += 0.1
else if (fadein == 1)
    fadealpha -= 0.1
if (fadein == 1 && fadealpha < 0)
    instance_destroy()
