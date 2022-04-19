/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
if other != creator {
	if instance_exists(obj_player) and obj_player != other then
	{
		obj_player.points += 10
	}

	other.hp -= 10
	instance_destroy()
}