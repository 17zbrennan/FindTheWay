/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 4F384315
/// @DnDArgument : "x" "obj_planet.x"
/// @DnDArgument : "y" "obj_planet.y"
direction = point_direction(x, y, obj_planet.x, obj_planet.y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 342FBAB5
/// @DnDArgument : "angle" "direction"
image_angle = direction;