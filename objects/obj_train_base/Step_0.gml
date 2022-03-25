/// @description Insert description here
// You can write your code in this editor
if keyboard_check(vk_right) {
	x = x - 4
	//heading = Heading.Right
}
if keyboard_check(vk_left) {
	x = x + 4
	//heading = Heading.Left
}
if x+sprite_width<=0{
	x+= (768*3)+(40*4)
}
