function scr_player_death() //gml_Script_scr_player_death
{
    scr_getinput()
    scr_deathcollision()
    sprite_index = spr_player_dead
    if (has_jumped == 0)
    {
        has_jumped = 1
        vsp = -5.2
        hsp = 0
        audio_play_sound(sfx_hurt, 10, false)
    }
    death_timer--
    if (death_timer == 0)
        game_restart()
}

