/// @description Step

//TOFIX cleanup shitty fade
if(fade)
{
	image_alpha = lerp(image_alpha, 0, 0.1);
}
if(image_alpha<1/64)
{
	instance_destroy();
}
y-= 0.5;

