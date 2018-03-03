/// @description Insert description here
// You can write your code in this editor
if(image_xscale<1)
{
	image_xscale = lerp(image_xscale, 1, 0.5);
	image_yscale = lerp(image_yscale, 1, 0.5);
	if(1-image_xscale<0.1)
	{
		image_xscale = 1;
		image_yscale = 1;
		alarm[0] = SECOND;
	}
}
if(fade)
{
	image_alpha = lerp(image_alpha, 0, 0.2);
}

if(image_alpha<0.05)
{
	instance_destroy();
}