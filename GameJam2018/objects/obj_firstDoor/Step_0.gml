/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 73A4ABB2
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "sigTimer"
sigTimer += -1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0A4FECC4
/// @DnDArgument : "var" "sigTimer"
/// @DnDArgument : "op" "3"
if(sigTimer <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2817BF9A
	/// @DnDParent : 0A4FECC4
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_tranWave"
	/// @DnDArgument : "layer" ""Layer_Player""
	/// @DnDSaveInfo : "objectid" "667d1f90-3116-4bf8-aa44-9f0ddfa6c72e"
	instance_create_layer(x + 0, y + 0, "Layer_Player", obj_tranWave);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0CCE72EB
	/// @DnDParent : 0A4FECC4
	/// @DnDArgument : "expr" "300"
	/// @DnDArgument : "var" "sigTimer"
	sigTimer = 300;
}