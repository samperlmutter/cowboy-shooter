/// @description Insert description here
if(other == obj_player) {
	with(other) {
		if(was_hit == false) {
			was_hit = true;
		}
	}
}

if other != creator {
	if instance_exists(obj_player) and obj_player == creator then
	{
		obj_player.points += 10
	}

	other.hp -= creator.damage
	instance_destroy()
}