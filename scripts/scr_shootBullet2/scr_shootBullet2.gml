// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_shootBullet2(shooter, b_x, b_y){
	bullet = instance_create_layer(b_x, b_y, "Instances", obj_bullet)
	bullet.heading = shooter.heading
	bullet.creator = shooter
}