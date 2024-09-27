if instance_exists(obj_player)
{
    if (round(obj_player.y + obj_player.sprite_height / 2.4) > y)
        mask_index = -1
    else
        mask_index = spr_platform
}
