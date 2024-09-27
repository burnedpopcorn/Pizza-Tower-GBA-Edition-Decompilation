image_speed = 0.175
if (!(place_meeting(x, (y + 1), obj_solid)))
{
    hsp = 0
    roam = 0
}
if (roam == 1 && bounce == 0)
{
    if place_meeting(x, (y + 1), obj_wall)
        hsp = image_xscale * movespeed
    sprite_index = spr_slime_move
    if (place_meeting((x + 1), y, obj_wall) && image_xscale == 1)
        image_xscale = -1
    if (place_meeting((x - 1), y, obj_wall) && image_xscale == -1)
        image_xscale = 1
    if (!(place_meeting((x + 15), (y + 3), obj_wall)))
        image_xscale = -1
    if (!(place_meeting((x - 15), (y + 3), obj_wall)))
        image_xscale = 1
}
if (roam == 0 && bounce == 0)
{
    hsp = 0
    sprite_index = spr_slime_idle
}
if (stun == 1)
    sprite_index = spr_slime_stunned
scr_collision()
if place_meeting(x, y, obj_player)
{
    if (obj_player.state == 3 || obj_player.state == 12)
    {
        instance_destroy()
        instance_create(x, y, obj_cheeseslimedead)
        instance_create(x, y, obj_20)
        global.collect += 20
        audio_play_sound(sfx_killenemy, 10, false)
    }
    if (obj_player.state == 0 || obj_player.state == 1 || obj_player.state == 2 || obj_player.state == 4 || obj_player.state == 5)
    {
        stun = 1
        alarm[1] = 2
        vsp = -1.3
        hsp = image_xscale * -2
        if (!audio_is_playing(sfx_bumpwall))
            audio_play_sound(sfx_bumpwall, 10, false)
        with (obj_player)
        {
            if (xscale == 1)
            {
                state = 5
                hsp = -1.3
                vsp = -1
                mach = 0
                image_index = 0
                audio_sound_gain(sfx_bumpwall, 0.7, 0)
                if (!audio_is_playing(sfx_bumpwall))
                    audio_play_sound(sfx_bumpwall, 1, false)
            }
            if (xscale == -1)
            {
                state = 5
                hsp = 1.3
                vsp = -1
                mach = 0
                image_index = 0
                audio_sound_gain(sfx_bumpwall, 0.7, 0)
                if (!audio_is_playing(sfx_bumpwall))
                    audio_play_sound(sfx_bumpwall, 1, false)
            }
        }
    }
}
