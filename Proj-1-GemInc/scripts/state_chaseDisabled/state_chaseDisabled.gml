//this is for disabling state damage.

disableCounter +=1;

if disableCounter >= disableTimer
{
	disableCounter = 0;
	currentState = chaseEnum.patrol;
}