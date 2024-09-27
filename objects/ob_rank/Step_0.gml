if (!(place_meeting((x - 1), y, obj_wall)))
    hspeed = -5
else if place_meeting((x - 1), y, obj_wall)
{
    hspeed = 0
    instance_create(x, y, obj_pressanybutton)
}
