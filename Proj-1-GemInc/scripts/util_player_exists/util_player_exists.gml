// if !util_player_exists() then exit;
if instance_exists(obj_player)
{
	return true;
}
else
{
	return false;	
}