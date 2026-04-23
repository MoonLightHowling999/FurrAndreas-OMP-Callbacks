# FurrAndreas-OMP-Callbacks
Custom callbacks that the gamemode FurrAndreas relies on.

Originally by **Emmet_**, updated for Open.MP compatibility and for FurrAndreas gamemode as well.

---

## New Callbacks

| Callback | Description |
|---|---|
| `OnPlayerPause(playerid)` | Player tabbed out or went AFK |
| `OnPlayerResume(playerid, time)` | Player came back, `time` is how long they were gone (ms) |
| `OnPlayerHoldingKey(playerid, keys)` | Fires every 200ms while a key is held |
| `OnPlayerReleaseKey(playerid, keys, time)` | Key released, `time` is how long it was held |
| `OnPlayerFall(playerid, Float:damage)` | Player took fall damage |
| `OnPlayerPacketLoss(playerid, Float:oldloss, Float:newloss)` | Player's packet loss changed |
| `OnPlayerUseVending(playerid, type)` | Player used a vending machine |
| `OnPlayerCrashVehicle(playerid, vehicleid, Float:damage)` | Vehicle took crash damage |
| `OnPlayerFPSChange(playerid, oldfps, newfps)` | Player's FPS changed |
| `OnPlayerJackVehicle(playerid, targetid, vehicleid)` | Player carjacked someone |
| `OnPlayerEmptyWeapon(playerid, weaponid)` | Player fired their last bullet |
| `OnPlayerFriendlyFire(playerid, targetid, weaponid)` | Player shot a teammate |
| `OnPlayerTargetPlayer(playerid, targetid, weaponid)` | Player aimed at another player |
| `OnPlayerHideCursor(playerid, hovercolor)` | Player pressed ESC on a textdraw selection |
| `OnPlayerAntiReload(playerid, weaponid)` | Player fired more shots than the clip holds |
| `OnPlayerAnimationPlay(playerid, animlib[], animname[])` | An applied animation started playing |
| `OnPlayerReloadWeapon(playerid, weaponid, ammo)` | Player started reloading |
| `OnPlayerActionChange(playerid, oldaction, newaction)` | Player switched between idle, shooting, swimming, skydiving |
| `OnPlayerRamPlayer(playerid, driverid, vehicleid, Float:damage)` | Player got rammed by a vehicle |
| `OnPlayerSprayAtVehicle(playerid, vehicleid)` | Player is spraying a vehicle |
| `OnPlayerStartBurn(playerid)` | Player caught fire |
| `OnPlayerStopBurn(playerid)` | Player stopped burning |
| `OnPlayerStartAim(playerid, weaponid)` | Player entered aim mode |
| `OnPlayerStopAim(playerid)` | Player left aim mode |
| `OnPlayerUseCamera(playerid)` | Player took a photo |
| `OnPlayerJump(playerid)` | Player jumped |
| `OnPlayerUseGarage(playerid, vehicleid, type)` | Player used a Pay'n'Spray or Bomb Shop |
| `OnVehicleCreated(vehicleid, color1, color2)` | Vehicle was created by the server |

---

## Utility Functions

```pawn
IsPlayerPaused(playerid)
IsPlayerBurning(playerid)
IsPlayerAiming(playerid)
IsPlayerSwimming(playerid)
IsPlayerSkydiving(playerid)
IsPlayerJumping(playerid)
IsPlayerNearVending(playerid, type)
IsPlayerNearGarage(playerid, type)
IsPlayerSprayingVehicle(playerid, vehicleid)

GetPlayerFPS(playerid)
GetPlayerAction(playerid)
GetPlayerPausedTime(playerid)
GetPlayerPacketLoss(playerid)
GetConnectedTime(playerid)
```

---

## Usage

Just include it in your gamemode or filterscript and define whichever callbacks you need:

```pawn
#include <callbacks>

public OnPlayerJump(playerid)
{
    SendClientMessage(playerid, 0xCDD5D4, "{CDD5D4}Player %d has jumped", playerid); // show this when somebody jumpps another
	return 1;
}

public OnPlayerRamPlayer(playerid, driverid, vehicleid, Float:damage)
{
    SendClientMessage(playerid, 0xCDD5D4, "{CDD5D4}Player %d has rammed player %d with vehicle %d causing damage %.2f", playerid, driverid, vehicleid, damage); // show this when somebody rams another
    return 1;
}
```

For a more complete example see **[example.pwn](example.pwn)**.

---

## Notes
- Some callbacks need to be Forward-declared in your own script like so:
```pawn

// Forwards here
forward OnPlayerBurning(playerid, status);
forward OnPlayerAiming(playerid, weaponid, status);
forward OnPlayerSprint(playerid, status);
```

- Compatible with other includes that hook `OnPlayerUpdate` etc. via ALS
- FPS detection uses the drunk level trick, readings are approximate and cap around 200
- `OnPlayerAntiReload` only covers weapons in the COLT45–TEC9 range
- `OnPlayerUseGarage` relies on camera mode + money deduction, so it can theoretically misfire if something else modifies player money at the same time

---

## Tests:

[In-Game Screenshot](https://imgur.com/vLCSdBi)

---

## Credits

Original include by [Emmet_](https://github.com/emmet-jones). Open.MP fixes applied.
