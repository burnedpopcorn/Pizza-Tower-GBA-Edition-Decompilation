if (timestop == 0)
{
    global.seconds = global.seconds - 1
    if (global.seconds < 0)
    {
        global.seconds = 59
        global.minutes = global.minutes - 1
    }
}
alarm[1] = 60
