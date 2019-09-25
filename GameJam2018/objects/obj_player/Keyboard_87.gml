/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1
/// @DnDHash : 5C11E02C
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "3 "
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_wall"
/// @DnDSaveInfo : "object" "efc9b2d8-485b-4f7d-bf11-e105304809d8"
var l5C11E02C_0 = instance_place(x + 0, y + 3 , obj_wall);
if ((l5C11E02C_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 427E2498
	/// @DnDParent : 5C11E02C
	/// @DnDArgument : "expr" "-7"
	/// @DnDArgument : "var" "vsp"
	vsp = -7;
}