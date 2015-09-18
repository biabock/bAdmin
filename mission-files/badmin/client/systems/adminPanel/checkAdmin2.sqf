// *****************************************************************************************
// * This script is licensed under the GNU Lesser GPL v3. Copyright © 2015 A3Wasteland.com *
// *****************************************************************************************
//	@file Version: 1.0
//	@file Name: checkAdmin2.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 20/11/2012 05:19
//	@file Args:
// bAdmin Exile by Biabock

_isAdmin = serverCommandAvailable "#kick";

if (_isAdmin) then {
	_uid = getPlayerUID player;
	serverAdministrators set [count serverAdministrators, _uid];
	player sideChat "You have been made admin, please re-open the menu";
};
