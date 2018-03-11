/// @description Step

//TOFIX cleanup shitty fade
if(fade)
{
	image_alpha = lerp(image_alpha, 0, fade_speed);
}
if(image_alpha<1/64)
{
	instance_destroy();
}
y-= 0.5;
if(stick_to_cursor)
{
	x = mouse_x;
	y = mouse_y-5;
}

