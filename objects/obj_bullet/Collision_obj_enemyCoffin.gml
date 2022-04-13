/// @description Insert description here
if instance_exists(obj_player) then
{
	obj_player.points += 10
}

instance_destroy(other)
instance_destroy()
