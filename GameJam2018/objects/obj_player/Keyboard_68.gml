/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 4E6BB7C0
image_xscale = 1;
image_yscale = 1;

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1
/// @DnDHash : 0208483E
/// @DnDArgument : "x" "5 "
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-16"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_wall"
/// @DnDSaveInfo : "object" "efc9b2d8-485b-4f7d-bf11-e105304809d8"
var l0208483E_0 = instance_place(x + 5 , y + -16, obj_wall);
if ((l0208483E_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 19533F9F
	/// @DnDParent : 0208483E
	/// @DnDArgument : "var" "hsp"
	hsp = 0;

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 47B7ADA1
	/// @DnDParent : 0208483E
	/// @DnDArgument : "x" "hsp*move"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "0"
	/// @DnDArgument : "y_relative" "1"
	x += hsp*move;
	y += 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 61D2CFD3
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 076DE924
	/// @DnDParent : 61D2CFD3
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "hsp"
	hsp = 1;

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 79D84E35
	/// @DnDParent : 61D2CFD3
	/// @DnDArgument : "x" "hsp*move"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "0"
	/// @DnDArgument : "y_relative" "1"
	x += hsp*move;
	y += 0;
}