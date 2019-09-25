/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7A813D09
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "lifeTime"
lifeTime += -1;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 0F7DF948
/// @DnDArgument : "xscale" ".1"
/// @DnDArgument : "xscale_relative" "1"
/// @DnDArgument : "yscale" ".1"
/// @DnDArgument : "yscale_relative" "1"
image_xscale += .1;
image_yscale += .1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 20BA2D82
/// @DnDArgument : "var" "lifeTime"
/// @DnDArgument : "op" "3"
if(lifeTime <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 579269E6
	/// @DnDParent : 20BA2D82
	instance_destroy();
}