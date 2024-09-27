function scr_player_bodyslam() //gml_Script_scr_player_bodyslam
{
    scr_getinput()
    scr_collision()
    movespeed = hsp
    if key_left
    {
        hsp = (-movespeedmax)
        xscale = -1
        movespeed = movespeedmax
    }
    else if key_right
    {
        hsp = movespeedmax
        xscale = 1
        movespeed = movespeedmax
    }
    else if ((!key_left) || (!key_right))
    {
        hsp = 0
        movespeed = 0
    }
    vsp += 0.1
    if (vsp > 20)
        vsp = 20
    freefall--
    instance_create(x, (y + 4), obj_playerbodyslamhitbox)
    sprite_index = spr_player_bodyslamfall
    image_speed = 0.175
    if (sprite_index == spr_player_bodyslamfall && ground == 1 && (!(place_meeting(x, (y + 1), obj_brick))) && (!(place_meeting(x, (y + 1), obj_brickbig))))
    {
        sprite_index = spr_player_bodyslamland
        if (sound_played == 0)
        {
            audio_play_sound(sfx_bodyslamland, 10, false)
            sound_played = 1
        }
        vsp = 0
        groundpound_timer--
        with (obj_playerbodyslamhitbox)
            instance_destroy()
    }
    if (sprite_index == spr_player_bodyslamland)
    {
        vsp = 0
        hsp = 0
        groundpound_timer--
        if (sound_played == 0)
        {
            audio_play_sound(sfx_bodyslamland, 10, false)
            sound_played = 1
        }
        with (obj_baddie)
        {
            stun = 1
            alarm[1] = 2
            vsp = -0.7
        }
    }
    if (sprite_index == spr_player_bodyslamland && groundpound_timer <= 0)
    {
        state = 0
        with (obj_playerbodyslamhitbox)
            instance_destroy()
        with (obj_playerbodyslamhardhitbox)
            instance_destroy()
    }
    if (freefall == 0 && ground == 0)
    {
        instance_create(x, y, obj_bodyslameffect)
        instance_create(x, (y + 4), obj_playerbodyslamhardhitbox)
        freefall = 0
    }
    if (freefall > 0 && ground == 0 && (!key_down))
    {
        state = 1
        sprite_index = spr_player_fall
    }
}

