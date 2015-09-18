// *****************************************************************************************
// * This script is licensed under the GNU Lesser GPL v3. Copyright © 2015 A3Wasteland.com *
// *****************************************************************************************
//	@file Version: 1.1
//	@file Name: init.sqf
//	@file Author: [404] Deadbeat, [GoT] JoSchaap, AgentRev
//	@file Created: 20/11/2012 05:19
//	@file Description: The server init.
//	@file Args:
// bAdmin Exile by Biabock

// All the "hasInterface" and "isServer" checks are to allow this file to be executed on a headless client to offload object saving

if (!isServer && hasInterface) exitWith {};

externalConfigFolder = "\bAdmin_settings";

if (isServer) then
{
	[] execVM "badmin\server\admins.sqf";
	[] execVM "badmin\server\broadcaster.sqf";
};

diag_log "bAdmin - Server Compile Finished";