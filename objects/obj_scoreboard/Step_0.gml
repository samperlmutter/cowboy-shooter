/// @description Insert description here
if object_exists(obj_player) {
	if(!object_exists(obj_enemyCactus and !object_exists(obj_enemyCoffin))){
		win = true
	}

	if(obj_player.hp <= 0){
		lose = true
	}
}