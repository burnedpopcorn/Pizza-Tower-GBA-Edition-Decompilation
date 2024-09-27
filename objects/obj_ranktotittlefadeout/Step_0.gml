if (fadealpha > 1)
{
    fadein = 1
    game_restart()
}
if (fadein == 0)
    fadealpha += 0.1
else if (fadein == 1)
    fadealpha -= 0.1
if (fadein == 1 && fadealpha < 0)
    instance_destroy()
