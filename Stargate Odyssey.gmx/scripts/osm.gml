varGunLength = point_distance(sprite_get_xoffset(sprite_index),sprite_get_yoffset(sprite_index),argument0,125);
varGunDirection = point_direction(sprite_get_xoffset(sprite_index),sprite_get_yoffset(sprite_index),argument0,125);
varsor1X = x + lengthdir_x(varGunLength,image_angle + varGunDirection);
varsor1Y = y + lengthdir_y(varGunLength,image_angle + varGunDirection);
a=instance_create(varsor1X,varsor1Y,obj_missile2)
a.direction=obj_daedalus.direction-45+random(45)

varGunLength = point_distance(sprite_get_xoffset(sprite_index),sprite_get_yoffset(sprite_index),argument0,121);
varGunDirection = point_direction(sprite_get_xoffset(sprite_index),sprite_get_yoffset(sprite_index),argument0,121);
varsor1X = x + lengthdir_x(varGunLength,image_angle + varGunDirection);
varsor1Y = y + lengthdir_y(varGunLength,image_angle + varGunDirection);
a=instance_create(varsor1X,varsor1Y,obj_missile2)
a.direction=obj_daedalus.direction+45-random(45)
