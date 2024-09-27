if (fadealpha > 1)
{
    fadein = 1
    if (room != obj_hallway2.targetRoom)
        room_goto(obj_hallway2.targetRoom)
    with (obj_player)
    {
        y = obj_hallway2.targetY
        x = obj_hallway2.targetX
        targetRoom = obj_hallway2.targetRoom
    }
}
if (fadein == 0)
    fadealpha += 0.1
else if (fadein == 1)
    fadealpha -= 0.1
if (fadein == 1 && fadealpha < 0)
    instance_destroy()
