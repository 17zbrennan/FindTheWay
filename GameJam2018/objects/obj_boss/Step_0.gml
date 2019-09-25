/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5509267F
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cd"
cd += -1;

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 0C0D6592
/// @DnDArgument : "obj" "obj_ship"
/// @DnDSaveInfo : "obj" "59ea80b1-724b-4e9a-9a72-d8142a9d7bb9"
var l0C0D6592_0 = false;
l0C0D6592_0 = instance_exists(obj_ship);
if(l0C0D6592_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 7EF51B87
	/// @DnDParent : 0C0D6592
	/// @DnDArgument : "x" "obj_ship.x"
	/// @DnDArgument : "y" "obj_ship.y"
	direction = point_direction(x, y, obj_ship.x, obj_ship.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 62B2C7D3
	/// @DnDParent : 0C0D6592
	/// @DnDArgument : "speed" "spd "
	speed = spd ;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 40442083
	/// @DnDParent : 0C0D6592
	/// @DnDArgument : "expr" "3"
	/// @DnDArgument : "var" "spd"
	spd = 3;
}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 56C177E9
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7804CA59
/// @DnDArgument : "var" "cd"
/// @DnDArgument : "op" "3"
if(cd <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7373921B
	/// @DnDParent : 7804CA59
	/// @DnDArgument : "expr" "200"
	/// @DnDArgument : "var" "cd"
	cd = 200;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0E99DD76
	/// @DnDParent : 7804CA59
	/// @DnDArgument : "xpos" "x"
	/// @DnDArgument : "ypos" "y"
	/// @DnDArgument : "objectid" "obj_eneatt1"
	/// @DnDArgument : "layer" ""Layer_Bullet""
	instance_create_layer(x, y, "Layer_Bullet", obj_eneatt1);
}