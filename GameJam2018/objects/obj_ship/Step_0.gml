/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 1EB0A3BC
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 0E2B7895
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 16D13F3F
/// @DnDDisabled : 1
/// @DnDArgument : "button" "mb_right"
/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 470F2F6B
/// @DnDDisabled : 1
/// @DnDParent : 16D13F3F
/// @DnDArgument : "var" "cdBomb"
/// @DnDArgument : "op" "3"
/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 235F4CB8
/// @DnDDisabled : 1
/// @DnDParent : 470F2F6B
/// @DnDArgument : "xpos" "x"
/// @DnDArgument : "ypos" "y"
/// @DnDArgument : "objectid" "obj_bomb"
/// @DnDArgument : "layer" ""bullet""


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4E0BCE3A
/// @DnDDisabled : 1
/// @DnDParent : 470F2F6B
/// @DnDArgument : "expr" "500"
/// @DnDArgument : "var" "cdBomb"

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5AFEA7FD
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cdBomb"


/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 29905B0C
var l29905B0C_0;
l29905B0C_0 = mouse_check_button(mb_left);
if (l29905B0C_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7E3404F2
	/// @DnDParent : 29905B0C
	/// @DnDArgument : "var" "cd"
	/// @DnDArgument : "op" "3"
	if(cd <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7B90FC28
		/// @DnDParent : 7E3404F2
		/// @DnDArgument : "xpos" "x"
		/// @DnDArgument : "ypos" "y"
		/// @DnDArgument : "objectid" "obj_pWave"
		/// @DnDArgument : "layer" ""Layer_Bullet""
		/// @DnDSaveInfo : "objectid" "4281a217-70f8-4dd2-ab2c-9af3553696a4"
		instance_create_layer(x, y, "Layer_Bullet", obj_pWave);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 65588EE8
		/// @DnDParent : 7E3404F2
		/// @DnDArgument : "expr" "30"
		/// @DnDArgument : "var" "cd"
		cd = 30;
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 63A05F8B
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cd"
cd += -1;