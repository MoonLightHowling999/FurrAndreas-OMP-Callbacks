/*

	Good luck with whatever you're doing!
	
  Enjoy :3
  
*/

#include <open.mp>
#include <callbacks>

// --------------------------------------------------
// Forwards here
// --------------------------------------------------

forward OnPlayerBurning(playerid, status);
forward OnPlayerAiming(playerid, weaponid, status);
forward OnPlayerSprint(playerid, status);


// --------------------------------------------------
// Examples
// --------------------------------------------------

public OnPlayerPause(playerid)
{
    SendClientMessage(playerid, 0xCDD5D4, "{CDD5D4}Player %d has paused the game", playerid);
	return 1;
}

public OnPlayerResume(playerid, time)
{
    SendClientMessage(playerid, 0xCDD5D4, "{CDD5D4}Player %d has resumed the game", playerid);
	return 1;
}

public OnPlayerHoldingKey(playerid, keys)
{
	return 1;
}

public OnPlayerReleaseKey(playerid, keys, time)
{
	return 1;
}

public OnPlayerFall(playerid, Float:damage)
{
    SendClientMessage(playerid, 0xCDD5D4, "{CDD5D4}Player %d has fallen with damage %.2f", playerid, damage);
	return 1;
}

public OnPlayerUseVending(playerid)
{
	return 1;
}

public OnPlayerPacketLoss(playerid, Float:oldloss, Float:newloss)
{
	return 1;
}

public OnPlayerCrashVehicle(playerid, vehicleid, Float:damage)
{
    SendClientMessage(playerid, 0xCDD5D4, "{CDD5D4}Player %d crashed vehicle %d with damage %.2f", playerid, vehicleid, damage);
	return 1;
}

public OnPlayerFPSChange(playerid, oldfps, newfps)
{   
	return 1;
}

public OnPlayerJackVehicle(playerid, targetid, vehicleid)
{
    SendClientMessage(playerid, 0xCDD5D4, "{CDD5D4}Player %d has jacked vehicle %d", playerid, vehicleid);
	return 1;
}

public OnPlayerEmptyWeapon(playerid, weaponid)
{
	return 1;
}

public OnPlayerFriendlyFire(playerid, targetid, weaponid)
{
	return 1;
}

public OnPlayerTargetPlayer(playerid, targetid, weaponid)
{
	return 1;
}

public OnPlayerHideCursor(playerid, hovercolor)
{
	return 1;
}

public OnPlayerAntiReload(playerid, weaponid)
{
	return 1;
}

public OnPlayerAnimationPlay(playerid, animlib[], animname[])
{
    return 1;
}

public OnPlayerReloadWeapon(playerid, weaponid, ammo)
{
    return 1;
}

public OnPlayerBurning(playerid, status)
{
	SendClientMessage(playerid, 0xCDD5D4, "{CDD5D4}Player %d is burning: %d", playerid, status);
    return 1;
}

public OnPlayerAiming(playerid, weaponid, status)
{
    return 1;
}

public OnPlayerActionChange(playerid, oldaction, newaction)
{
    return 1;
}

public OnPlayerRamPlayer(playerid, driverid, vehicleid, Float:damage)
{
    SendClientMessage(playerid, 0xCDD5D4, "{CDD5D4}Player %d has rammed player %d with vehicle %d causing damage %.2f", playerid, driverid, vehicleid, damage);
    return 1;
}

public OnPlayerUseCamera(playerid)
{
	return 1;
}

public OnPlayerSprayAtVehicle(playerid, vehicleid)
{
	return 1;
}

public OnPlayerJump(playerid)
{
    SendClientMessage(playerid, 0xCDD5D4, "{CDD5D4}Player %d has jumped", playerid);
	return 1;
}

public OnPlayerSprint(playerid, status)
{
    SendClientMessage(playerid, 0xCDD5D4, "{CDD5D4}Player %d is sprinting: %d", playerid, status);
	return 1;
} // End, Bye
