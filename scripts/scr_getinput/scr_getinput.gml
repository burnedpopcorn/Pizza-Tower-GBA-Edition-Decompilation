function scr_getinput() //gml_Script_scr_getinput
{
    key_right = keyboard_check(vk_right)
    key_left = keyboard_check(vk_left)
    key_up = keyboard_check(vk_up)
    key_down = keyboard_check(vk_down)
    key_right2 = keyboard_check_pressed(vk_right)
    key_left2 = keyboard_check_pressed(vk_left)
    key_up2 = keyboard_check_pressed(vk_up)
    key_down2 = keyboard_check_pressed(vk_down)
    key_jump = keyboard_check(ord("Z"))
    key_jump2 = keyboard_check_pressed(ord("Z"))
    key_attack = keyboard_check(vk_shift)
    key_attack2 = keyboard_check_pressed(vk_shift)
    key_punch = keyboard_check(ord("X"))
    key_punch2 = keyboard_check_pressed(ord("X"))
}

