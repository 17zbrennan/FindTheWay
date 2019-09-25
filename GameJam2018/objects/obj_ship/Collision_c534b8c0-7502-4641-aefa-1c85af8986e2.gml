/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 32AF893B
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "hp"
hp += -1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 49E42CAA
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4D95E51B
	/// @DnDParent : 49E42CAA
	/// @DnDArgument : "objind" "obj_shipdead"
	/// @DnDSaveInfo : "objind" "eb290640-cfe8-41db-8400-18669f0ad286"
	instance_change(obj_shipdead, true);
}