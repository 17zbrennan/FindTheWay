/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 2FE8D02A
/// @DnDArgument : "xscale" "5"
/// @DnDArgument : "yscale" "5"
image_xscale = 5;
image_yscale = 5;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4F2CDA74
/// @DnDArgument : "expr" "180"
/// @DnDArgument : "var" "time"
time = 180;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1566BAAE
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "time "
time  += -1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 06D58557
/// @DnDArgument : "var" "time"
/// @DnDArgument : "op" "3"
if(time <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4A08C93D
	/// @DnDParent : 06D58557
	instance_destroy();
}