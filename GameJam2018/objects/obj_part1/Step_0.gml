/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 72C41D6A
/// @DnDArgument : "var" "goodSpawn"
/// @DnDArgument : "value" "1"
if(goodSpawn == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6FC42140
	/// @DnDParent : 72C41D6A
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "waveTimer"
	waveTimer += -1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 79D7A0E1
	/// @DnDParent : 72C41D6A
	/// @DnDArgument : "var" "waveTimer"
	if(waveTimer == 0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 2DB1D28F
		/// @DnDParent : 79D7A0E1
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_tranWave"
		/// @DnDArgument : "layer" ""Layer_Player""
		/// @DnDSaveInfo : "objectid" "667d1f90-3116-4bf8-aa44-9f0ddfa6c72e"
		instance_create_layer(x + 0, y + 0, "Layer_Player", obj_tranWave);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 585BD944
		/// @DnDParent : 79D7A0E1
		/// @DnDArgument : "expr" "300"
		/// @DnDArgument : "var" "waveTimer"
		waveTimer = 300;
	}
}