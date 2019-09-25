/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0059416E
/// @DnDArgument : "var" "spd"
spd = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7FA4BE12
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cd"
cd += -1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 77CF7653
/// @DnDArgument : "var" "cd"
/// @DnDArgument : "op" "3"
if(cd <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6363D557
	/// @DnDParent : 77CF7653
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_eneatt"
	/// @DnDArgument : "layer" ""Layer_Bullet""
	/// @DnDSaveInfo : "objectid" "c57713aa-93c6-4423-9683-98a9c71bac80"
	instance_create_layer(x + 0, y + 0, "Layer_Bullet", obj_eneatt);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6CFB82BE
	/// @DnDParent : 77CF7653
	/// @DnDArgument : "expr" "100"
	/// @DnDArgument : "var" "cd"
	cd = 100;
}