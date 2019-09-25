/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3B323CEB
/// @DnDArgument : "var" "time"
time = 0;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 373DBDEC
/// @DnDArgument : "var" "time"
/// @DnDArgument : "op" "3"
if(time <= 0)
{
	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 39742AE9
	/// @DnDParent : 373DBDEC
	room_restart();
}