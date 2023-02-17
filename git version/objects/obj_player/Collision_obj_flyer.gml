/// @description Insert description here
// You can write your code in this editor
if (vspeed > 0 && other.y > y) 
{
  instance_destroy(other);
  vspeed = 5;
}
else
{
  instance_destroy(self);
}
