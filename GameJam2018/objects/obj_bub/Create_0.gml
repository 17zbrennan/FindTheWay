/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 47A37FB6
/// @DnDArgument : "xscale" "16"
/// @DnDArgument : "yscale" "16"
image_xscale = 16;
image_yscale = 16;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 412E75E4
/// @DnDApplyTo : 5c7437fe-ea6d-44bc-b0e0-8e08cbd9d7a7
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
with(obj_ship) var l412E75E4_0 = hp <= 0;
if(l412E75E4_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6FC9C3F8
	/// @DnDParent : 412E75E4
	instance_destroy();
}