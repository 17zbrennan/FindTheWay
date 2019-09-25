/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 48E342DB
instance_destroy();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1C7777F7
/// @DnDApplyTo : ca046e3e-f8ec-45c4-968d-0c6bf4f99098
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "partsCollected"
with(obj_player) {
partsCollected += 1;

}