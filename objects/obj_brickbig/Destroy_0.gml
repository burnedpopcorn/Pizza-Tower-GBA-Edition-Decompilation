audio_play_sound(sfx_break, 10, false)
tile_layer_delete_at(1, x, y)
tile_layer_delete_at(1, (x + 16), y)
tile_layer_delete_at(1, (x + 16), (y + 16))
tile_layer_delete_at(1, x, (y + 16))
instance_create((x + 16), (y + 16), obj_debris)
instance_create((x + 16), (y + 16), obj_debris)
instance_create((x + 16), (y + 16), obj_debris)
instance_create((x + 16), (y + 16), obj_debris)
