/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 6EB877BD
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "vsp"
/// @DnDArgument : "y_relative" "1"

y += vsp;

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1
/// @DnDHash : 05526982
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_wall"
/// @DnDSaveInfo : "object" "efc9b2d8-485b-4f7d-bf11-e105304809d8"
var l05526982_0 = instance_place(x + 0, y + 1, obj_wall);
if ((l05526982_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5F44429C
	/// @DnDParent : 05526982
	/// @DnDArgument : "var" "vsp"
	vsp = 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 76FB2793
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0E43EB97
	/// @DnDParent : 76FB2793
	/// @DnDArgument : "expr" "grav"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "vsp"
	vsp += grav;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 657E4E30
/// @DnDDisabled : 1
/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 58D995C8
/// @DnDDisabled : 1
/// @DnDParent : 657E4E30
/// @DnDArgument : "var" "shootTimer"
/// @DnDArgument : "op" "3"
/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 6F4C3D2C
/// @DnDDisabled : 1
/// @DnDParent : 58D995C8
/// @DnDArgument : "xpos" "x"
/// @DnDArgument : "ypos" "y"
/// @DnDArgument : "objectid" "obj_pWave"
/// @DnDArgument : "layer" ""Layer_Player""
/// @DnDSaveInfo : "objectid" "4281a217-70f8-4dd2-ab2c-9af3553696a4"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 718BB55E
/// @DnDDisabled : 1
/// @DnDParent : 58D995C8
/// @DnDArgument : "expr" "10"
/// @DnDArgument : "var" "shootTimer"

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 096620E0
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "shootTimer"


/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2C57026E
/// @DnDArgument : "var" "global.gCurrentStage"
/// @DnDArgument : "value" "1"
if(global.gCurrentStage == 1)
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1
	/// @DnDHash : 50092DF3
	/// @DnDParent : 2C57026E
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_transmitter"
	/// @DnDSaveInfo : "object" "49fb4f35-e740-4cfc-8794-5b93fa9d1e29"
	var l50092DF3_0 = instance_place(x + 0, y + 0, obj_transmitter);
	if ((l50092DF3_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 47F067D7
		/// @DnDParent : 50092DF3
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "tranCollected"
		tranCollected = 1;
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1DC4EDC0
		/// @DnDApplyTo : 49fb4f35-e740-4cfc-8794-5b93fa9d1e29
		/// @DnDParent : 50092DF3
		with(obj_transmitter) instance_destroy();
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 719CA807
	/// @DnDParent : 2C57026E
	/// @DnDArgument : "var" "tranCollected"
	/// @DnDArgument : "value" "1"
	if(tranCollected == 1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 04A62271
		/// @DnDParent : 719CA807
		/// @DnDArgument : "var" "tranCollected"
		tranCollected = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 13969914
		/// @DnDApplyTo : d9ec2f0b-fd18-4cb0-b1ad-28d8c32d26f6
		/// @DnDParent : 719CA807
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "goodSpawn"
		with(obj_part1) {
		goodSpawn = 1;
		
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 57A4649C
	/// @DnDParent : 2C57026E
	/// @DnDArgument : "var" "partsCollected"
	/// @DnDArgument : "value" "2"
	if(partsCollected == 2)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 59C58A86
		/// @DnDParent : 57A4649C
		/// @DnDArgument : "xpos" "7616"
		/// @DnDArgument : "ypos" "320"
		/// @DnDArgument : "objectid" "obj_firstDoor"
		/// @DnDArgument : "layer" ""Layer_Player""
		/// @DnDSaveInfo : "objectid" "9d7e5b3f-4bb5-46db-ac8a-42b8c11e5c07"
		instance_create_layer(7616, 320, "Layer_Player", obj_firstDoor);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4F44A6C1
		/// @DnDParent : 57A4649C
		/// @DnDArgument : "var" "partsCollected"
		partsCollected = 0;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1
	/// @DnDHash : 5143E5C6
	/// @DnDParent : 2C57026E
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_firstDoor"
	/// @DnDSaveInfo : "object" "9d7e5b3f-4bb5-46db-ac8a-42b8c11e5c07"
	var l5143E5C6_0 = instance_place(x + 0, y + 0, obj_firstDoor);
	if ((l5143E5C6_0 > 0))
	{
		/// @DnDAction : YoYo Games.Rooms.Next_Room
		/// @DnDVersion : 1
		/// @DnDHash : 57AFFDCC
		/// @DnDParent : 5143E5C6
		room_goto_next();
	}
}