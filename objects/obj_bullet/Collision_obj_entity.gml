/// @description Insert description here


if other != creator {
	if other.object_index == obj_player {
		with(other) {
			if !was_hit {
				was_hit = true;
			}
		}
	}

	other.hp -= creator.damage
	instance_destroy()
}