if (fadealpha > 1)
{
    fadein = 1
    if (room != obj_hallway.targetRoom)
        room_goto(obj_hallway.targetRoom)
    with (obj_player)
    {
        y = obj_hallway.targetY
        x = obj_hallway.targetX
        targetRoom = obj_hallway.targetRoom
    }
}
if (fadein == 0)
    fadealpha += 0.1
else if (fadein == 1)
    fadealpha -= 0.1
if (fadein == 1 && fadealpha < 0)
    instance_destroy()
