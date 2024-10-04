#define FILTERSCRIPT

#include <open.mp>
#include <LiveCam>

#pragma warning disable 239
#pragma warning disable 214
#pragma warning disable 217
#pragma warning disable 225
#pragma warning disable 202
#pragma warning disable 219
#pragma warning disable 204
#pragma warning disable 213
#pragma warning disable 202
#pragma warning disable 201
#pragma warning disable 235
#pragma warning disable 215
#pragma warning disable 202
#pragma warning disable 203
#pragma warning disable 234

new WatchingStream[MAX_PLAYERS] = -1;
new Stream = -1;
new Streamer[MAX_PLAYERS] = 0;
new PlayerText: Stream_TD[MAX_PLAYERS][7];

public OnFilterScriptInit()
{
	printf(" ");
	printf("  -----------------------------------");
	printf("  |  LiveCam System - DEKS |");
	printf("  -----------------------------------");
	printf(" ");
}

public OnFilterScriptExit()
{
	return 1;
}


public OnPlayerConnect(playerid)
{
	StreamPlayerTextdrawLoad(playerid);
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	return 1;
}

public OnPlayerSpawn(playerid)
{
	SetPlayerInterior(playerid, 0);
	return 1;
}

public OnPlayerDeath(playerid, killerid, WEAPON:reason)
{
	return 1;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
	return 1;
}

public OnVehicleSpawn(vehicleid)
{
	return 1;
}

public OnVehicleDeath(vehicleid, killerid)
{
	return 1;
}

public OnGameModeInit()
{
	return 1;
}

public OnGameModeExit()
{
	return 1;
}

public OnPlayerRequestSpawn(playerid)
{
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	return 0;
}

public OnPlayerText(playerid, text[])
{
	return 1;
}

public OnPlayerUpdate(playerid)
{
	return 1;
}

public OnPlayerKeyStateChange(playerid, KEY:newkeys, KEY:oldkeys)
{
	return 1;
}

public OnPlayerStateChange(playerid, PLAYER_STATE:newstate, PLAYER_STATE:oldstate)
{
	return 1;
}

public OnPlayerEnterCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveCheckpoint(playerid)
{
	return 1;
}

public OnPlayerEnterRaceCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveRaceCheckpoint(playerid)
{
	return 1;
}

public OnPlayerGiveDamageActor(playerid, damaged_actorid, Float:amount, WEAPON:weaponid, bodypart)
{
	return 1;
}

public OnActorStreamIn(actorid, forplayerid)
{
	return 1;
}

public OnActorStreamOut(actorid, forplayerid)
{
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	return 1;
}

public OnPlayerEnterGangZone(playerid, zoneid)
{
	return 1;
}

public OnPlayerLeaveGangZone(playerid, zoneid)
{
	return 1;
}

public OnPlayerEnterPlayerGangZone(playerid, zoneid)
{
	return 1;
}

public OnPlayerLeavePlayerGangZone(playerid, zoneid)
{
	return 1;
}

public OnPlayerClickGangZone(playerid, zoneid)
{
	return 1;
}

public OnPlayerClickPlayerGangZone(playerid, zoneid)
{
	return 1;
}

public OnPlayerSelectedMenuRow(playerid, row)
{
	return 1;
}

public OnPlayerExitedMenu(playerid)
{
	return 1;
}

public OnClientCheckResponse(playerid, actionid, memaddr, retndata)
{
	return 1;
}

public OnRconLoginAttempt(ip[], password[], success)
{
	return 1;
}

public OnPlayerFinishedDownloading(playerid, virtualworld)
{
	return 1;
}

public OnPlayerRequestDownload(playerid, DOWNLOAD_REQUEST:type, crc)
{
	return 1;
}

public OnRconCommand(cmd[])
{
	return 0;
}

public OnPlayerSelectObject(playerid, SELECT_OBJECT:type, objectid, modelid, Float:fX, Float:fY, Float:fZ)
{
	return 1;
}

public OnPlayerEditObject(playerid, playerobject, objectid, EDIT_RESPONSE:response, Float:fX, Float:fY, Float:fZ, Float:fRotX, Float:fRotY, Float:fRotZ)
{
	return 1;
}

public OnPlayerEditAttachedObject(playerid, EDIT_RESPONSE:response, index, modelid, boneid, Float:fOffsetX, Float:fOffsetY, Float:fOffsetZ, Float:fRotX, Float:fRotY, Float:fRotZ, Float:fScaleX, Float:fScaleY, Float:fScaleZ)
{
	return 1;
}

public OnObjectMoved(objectid)
{
	return 1;
}

public OnPlayerObjectMoved(playerid, objectid)
{
	return 1;
}

public OnPlayerPickUpPickup(playerid, pickupid)
{
	return 1;
}

public OnPlayerPickUpPlayerPickup(playerid, pickupid)
{
	return 1;
}

public OnPickupStreamIn(pickupid, playerid)
{
	return 1;
}

public OnPickupStreamOut(pickupid, playerid)
{
	return 1;
}

public OnPlayerPickupStreamIn(pickupid, playerid)
{
	return 1;
}

public OnPlayerPickupStreamOut(pickupid, playerid)
{
	return 1;
}

public OnPlayerStreamIn(playerid, forplayerid)
{
	return 1;
}

public OnPlayerStreamOut(playerid, forplayerid)
{
	return 1;
}

public OnPlayerTakeDamage(playerid, issuerid, Float:amount, WEAPON:weaponid, bodypart)
{
	return 1;
}

public OnPlayerGiveDamage(playerid, damagedid, Float:amount, WEAPON:weaponid, bodypart)
{
	return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, CLICK_SOURCE:source)
{
	return 1;
}

public OnPlayerWeaponShot(playerid, WEAPON:weaponid, BULLET_HIT_TYPE:hittype, hitid, Float:fX, Float:fY, Float:fZ)
{
	return 1;
}

public OnPlayerClickMap(playerid, Float:fX, Float:fY, Float:fZ)
{
	return 1;
}

public OnIncomingConnection(playerid, ip_address[], port)
{
	return 1;
}

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
	return 1;
}

public OnPlayerClickTextDraw(playerid, Text:clickedid)
{
	return 1;
}

public OnPlayerClickPlayerTextDraw(playerid, PlayerText:playertextid)
{
	if(playertextid == Stream_TD[playerid][6])
    {
         SendClientMessage(playerid, -1, "You have successfully exited live!");
         PlayerTextDrawHide(playerid, Stream_TD[playerid][0]);
         PlayerTextDrawHide(playerid, Stream_TD[playerid][1]);
   	     PlayerTextDrawHide(playerid, Stream_TD[playerid][2]);
   	     PlayerTextDrawHide(playerid, Stream_TD[playerid][3]);
   	     PlayerTextDrawHide(playerid, Stream_TD[playerid][4]);
   	     PlayerTextDrawHide(playerid, Stream_TD[playerid][5]);
   	     PlayerTextDrawHide(playerid, Stream_TD[playerid][6]);
         CancelSelectTextDraw(playerid);
         StopPlayerWatchingCamera(playerid);
         return 1;
    }
	return 1;
}

public OnTrailerUpdate(playerid, vehicleid)
{
	return 1;
}

public OnVehicleSirenStateChange(playerid, vehicleid, newstate)
{
	return 1;
}

public OnVehicleStreamIn(vehicleid, forplayerid)
{
	return 1;
}

public OnVehicleStreamOut(vehicleid, forplayerid)
{
	return 1;
}

public OnVehicleMod(playerid, vehicleid, componentid)
{
	return 1;
}

public OnEnterExitModShop(playerid, enterexit, interiorid)
{
	return 1;
}

public OnVehiclePaintjob(playerid, vehicleid, paintjobid)
{
	return 1;
}

public OnVehicleRespray(playerid, vehicleid, color1, color2)
{
	return 1;
}

public OnVehicleDamageStatusUpdate(vehicleid, playerid)
{
	return 1;
}

public OnUnoccupiedVehicleUpdate(vehicleid, playerid, passenger_seat, Float:new_x, Float:new_y, Float:new_z, Float:vel_x, Float:vel_y, Float:vel_z)
{
	return 1;
}

CMD:startstream(playerid, params[])
{
	if (Streamer[playerid] == 0) return SendClientMessage(playerid, -1, "You are not a streamer.");
	if (Stream != -1) return SendClientMessage(playerid, -1, "There is already an active live stream.");
	Stream = playerid;
    GivePlayerCamera(playerid);
	return 1;
}

CMD:stopstream(playerid)
{
    Stream = -1;
    RemovePlayerCamera(playerid);
    foreach (new i:Player) if (WatchingStream[i] != 0)
    {
        SendClientMessage(i, -1, "The streamer ended the live stream and it was automatically switched off.");
        PlayerTextDrawHide(i, Stream_TD[i][0]);
        PlayerTextDrawHide(i, Stream_TD[i][1]);
 	    PlayerTextDrawHide(i, Stream_TD[i][2]);
        PlayerTextDrawHide(i, Stream_TD[i][3]);
   	    PlayerTextDrawHide(i, Stream_TD[i][4]);
   	    PlayerTextDrawHide(i, Stream_TD[i][5]);
   	    PlayerTextDrawHide(i, Stream_TD[i][6]);
        CancelSelectTextDraw(i);
  		WatchingStream[playerid] = 0;
    }
    return 1;
}

CMD:watchstream(playerid)
{
    if(Streamer == -1) return SendClientMessage(playerid, -1, "There are no active live streams.");
	StartPlayerWatchingCamera(playerid, Streamer);

    SelectTextDraw(playerid, -1);

    PlayerTextDrawShow(playerid, Stream_TD[playerid][0]);
    PlayerTextDrawShow(playerid, Stream_TD[playerid][1]);
    PlayerTextDrawShow(playerid, Stream_TD[playerid][2]);
	PlayerTextDrawShow(playerid, Stream_TD[playerid][3]);
	PlayerTextDrawShow(playerid, Stream_TD[playerid][4]);
	PlayerTextDrawShow(playerid, Stream_TD[playerid][5]);
	PlayerTextDrawShow(playerid, Stream_TD[playerid][6]);

    new str[256];

    format(str, sizeof(str), "%s", Player_GetName(Streamer));
    PlayerTextDrawSetString(playerid, Stream_TD[playerid][3], str);

	format(str, sizeof(str), "%s - %s", getDate(), getTime());
    PlayerTextDrawSetString(playerid, Stream_TD[playerid][5], str);
    WatchingStream[playerid] = 1;	
	return 1;
}

Player_GetName(playerid)
{
	new name[MAX_PLAYER_NAME];
	GetPlayerName(playerid, name, sizeof(name));
	return name;
}

stock StreamPlayerTextdrawLoad(playerid)
{
    Stream_TD[playerid][0] = CreatePlayerTextDraw(playerid, 242.000, 347.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, Stream_TD[playerid][0], 141.000, 57.000);
	PlayerTextDrawAlignment(playerid, Stream_TD[playerid][0], 1);
	PlayerTextDrawColor(playerid, Stream_TD[playerid][0], -2139062017);
	PlayerTextDrawSetShadow(playerid, Stream_TD[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, Stream_TD[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, Stream_TD[playerid][0], 255);
	PlayerTextDrawFont(playerid, Stream_TD[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, Stream_TD[playerid][0], 1);

	Stream_TD[playerid][1] = CreatePlayerTextDraw(playerid, 279.000, 348.000, "LIVE STREAM");
	PlayerTextDrawLetterSize(playerid, Stream_TD[playerid][1], 0.310, 1.700);
	PlayerTextDrawAlignment(playerid, Stream_TD[playerid][1], 1);
	PlayerTextDrawColor(playerid, Stream_TD[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, Stream_TD[playerid][1], 1);
	PlayerTextDrawSetOutline(playerid, Stream_TD[playerid][1], 1);
	PlayerTextDrawBackgroundColor(playerid, Stream_TD[playerid][1], 150);
	PlayerTextDrawFont(playerid, Stream_TD[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid, Stream_TD[playerid][1], 1);

	Stream_TD[playerid][2] = CreatePlayerTextDraw(playerid, 244.000, 367.000, "Streamer:");
	PlayerTextDrawLetterSize(playerid, Stream_TD[playerid][2], 0.200, 1.199);
	PlayerTextDrawAlignment(playerid, Stream_TD[playerid][2], 1);
	PlayerTextDrawColor(playerid, Stream_TD[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, Stream_TD[playerid][2], 1);
	PlayerTextDrawSetOutline(playerid, Stream_TD[playerid][2], 1);
	PlayerTextDrawBackgroundColor(playerid, Stream_TD[playerid][2], 150);
	PlayerTextDrawFont(playerid, Stream_TD[playerid][2], 1);
	PlayerTextDrawSetProportional(playerid, Stream_TD[playerid][2], 1);

	Stream_TD[playerid][3] = CreatePlayerTextDraw(playerid, 279.000, 368.000, "Deks_Michealson");
	PlayerTextDrawLetterSize(playerid, Stream_TD[playerid][3], 0.129, 1.099);
	PlayerTextDrawAlignment(playerid, Stream_TD[playerid][3], 1);
	PlayerTextDrawColor(playerid, Stream_TD[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, Stream_TD[playerid][3], 1);
	PlayerTextDrawSetOutline(playerid, Stream_TD[playerid][3], 1);
	PlayerTextDrawBackgroundColor(playerid, Stream_TD[playerid][3], 150);
	PlayerTextDrawFont(playerid, Stream_TD[playerid][3], 1);
	PlayerTextDrawSetProportional(playerid, Stream_TD[playerid][3], 1);

	Stream_TD[playerid][4] = CreatePlayerTextDraw(playerid, 244.000, 379.000, "Date:");
	PlayerTextDrawLetterSize(playerid, Stream_TD[playerid][4], 0.200, 1.199);
	PlayerTextDrawAlignment(playerid, Stream_TD[playerid][4], 1);
	PlayerTextDrawColor(playerid, Stream_TD[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, Stream_TD[playerid][4], 1);
	PlayerTextDrawSetOutline(playerid, Stream_TD[playerid][4], 1);
	PlayerTextDrawBackgroundColor(playerid, Stream_TD[playerid][4], 150);
	PlayerTextDrawFont(playerid, Stream_TD[playerid][4], 1);
	PlayerTextDrawSetProportional(playerid, Stream_TD[playerid][4], 1);

	Stream_TD[playerid][5] = CreatePlayerTextDraw(playerid, 267.000, 380.000, "10/10/2000 - 19:50");
	PlayerTextDrawLetterSize(playerid, Stream_TD[playerid][5], 0.129, 1.099);
	PlayerTextDrawAlignment(playerid, Stream_TD[playerid][5], 1);
	PlayerTextDrawColor(playerid, Stream_TD[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, Stream_TD[playerid][5], 1);
	PlayerTextDrawSetOutline(playerid, Stream_TD[playerid][5], 1);
	PlayerTextDrawBackgroundColor(playerid, Stream_TD[playerid][5], 150);
	PlayerTextDrawFont(playerid, Stream_TD[playerid][5], 1);
	PlayerTextDrawSetProportional(playerid, Stream_TD[playerid][5], 1);

	Stream_TD[playerid][6] = CreatePlayerTextDraw(playerid, 361.000, 382.000, "LD_BEAT:cross");
	PlayerTextDrawTextSize(playerid, Stream_TD[playerid][6], 18.000, 20.000);
	PlayerTextDrawAlignment(playerid, Stream_TD[playerid][6], 1);
	PlayerTextDrawColor(playerid, Stream_TD[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, Stream_TD[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, Stream_TD[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, Stream_TD[playerid][6], 255);
	PlayerTextDrawFont(playerid, Stream_TD[playerid][6], 4);
	PlayerTextDrawSetProportional(playerid, Stream_TD[playerid][6], 1);
	PlayerTextDrawSetSelectable(playerid, Stream_TD[playerid][6], 1);
	return 1;
}