/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 0C0D6592
/// @DnDArgument : "obj" "obj_ship"
/// @DnDSaveInfo : "obj" "5c7437fe-ea6d-44bc-b0e0-8e08cbd9d7a7"
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
	/// @DnDArgument : "expr" "1.5"
	/// @DnDArgument : "var" "spd"
	spd = 1.5;
}