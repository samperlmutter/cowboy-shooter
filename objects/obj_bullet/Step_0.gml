/// @description Insert description here
// You can write your code in this editor
switch heading {
	case Heading.Left:
		image_angle = 180
		direction = 180
		break
	case Heading.Right:
		image_angle = 0
		direction = 0
		break
	case Heading.Up:
		image_angle = 90
		direction = 90
		break
	case Heading.Down:
		image_angle = 270
		direction = 270
		break
	case Heading.UpRight:
		image_angle = 45
		direction = 45
		break
	case Heading.UpLeft:
		image_angle = 135
		direction = 135
		break
	case Heading.DownRight:
		image_angle = 315
		direction = 315
		break
	case Heading.DownLeft:
		image_angle = 225
		direction = 225
		break
}
speed = 12
