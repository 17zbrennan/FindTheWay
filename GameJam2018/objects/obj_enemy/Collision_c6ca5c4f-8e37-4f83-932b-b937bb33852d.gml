/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2CB8CF77
/// @DnDArgument : "var" "spd"
spd = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5D88D787
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cd"
cd += -1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1B9C3ABD
/// @DnDArgument : "var" "cd"
/// @DnDArgument : "op" "3"
if(cd <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 463710C3
	/// @DnDParent : 1B9C3ABD
	/// @DnDArgument : "xpos" "x"
	/// @DnDArgument : "ypos" "y"
	/// @DnDArgument : "objectid" "obj_eneatt"
	/// @DnDArgument : "layer" ""bullet""
	/// @DnDSaveInfo : "objectid" "e816e572-e2dd-4d94-b7b6-72f9071ab238"
	instance_create_layer(x, y, "bullet", obj_eneatt);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 37CF6F38
	/// @DnDParent : 1B9C3ABD
	/// @DnDArgument : "expr" "100"
	/// @DnDArgument : "var" "cd"
	cd = 100;
}