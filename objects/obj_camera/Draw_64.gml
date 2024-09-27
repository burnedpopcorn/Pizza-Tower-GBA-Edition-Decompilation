display_set_gui_size(240, 160)
if instance_exists(obj_player)
{
    if (obj_player.state == 0 || obj_player.state == 1 || obj_player.state == 4 || obj_player.state == 5 || obj_player.state == 2 || obj_player.state == 10 || obj_player.state == 11 || obj_player.state == 9)
        draw_sprite(spr_pepinoHUD, -1, 35, 30)
    else if (obj_player.state == 3 || obj_player.state == 12)
        draw_sprite(spr_pepinoHUD_mach2, -1, 35, 30)
    else if (obj_player.state == 6 || obj_player.state == 7 || obj_player.state == 8 || obj_player.state == 11)
        draw_sprite(spr_pepinoHUD_hurt, -1, 35, 30)
    if (obj_player.mach < 7)
        draw_sprite(spr_speedbar, 0, 35, 46)
    else if (obj_player.mach >= 7 && obj_player.mach < 35)
        draw_sprite(spr_speedbar, 1, 35, 46)
    else if (obj_player.mach >= 35 && obj_player.mach < 50)
        draw_sprite(spr_speedbar, 2, 35, 46)
    else if (obj_player.mach >= 50 && obj_player.mach < 75)
        draw_sprite(spr_speedbar, 3, 35, 46)
    else if (obj_player.mach >= 75 && obj_player.mach < 100)
        draw_sprite(spr_speedbar, 4, 35, 46)
    else if (obj_player.mach >= 100)
        draw_sprite(spr_speedbarmax, -1, 35, 46)
    font = font_add_sprite(spr_numbers, 48, 0, 1)
    draw_set_font(font)
    draw_set_halign(fa_center)
    draw_set_color(c_white)
    draw_text(192, 14, string_hash_to_newline(global.collect))
    if (timestop == 0)
    {
        if (global.seconds < 10)
        {
            if (global.minutes < 1)
                draw_set_color(c_red)
            else
                draw_set_color(c_white)
            draw_text(120, 34, ((string_hash_to_newline(string(global.minutes) + ":0")) + string(global.seconds)))
        }
        else if (global.seconds >= 10)
        {
            if (global.minutes < 1)
                draw_set_color(c_red)
            else
                draw_set_color(c_white)
            draw_text(120, 34, ((string_hash_to_newline(string(global.minutes) + ":")) + string(global.seconds)))
        }
    }
}
draw_set_blend_mode(0)
