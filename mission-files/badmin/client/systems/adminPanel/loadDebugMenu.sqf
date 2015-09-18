// *****************************************************************************************
// * This script is licensed under the GNU Lesser GPL v3. Copyright © 2015 A3Wasteland.com *
// *****************************************************************************************
//	@file Version: 1.0
//	@file Name: loadDebugMenu.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 20/11/2012 05:19
//	@file Args:
// bAdmin Exile by Biabock

#define debugMenu_option 50003
disableSerialization;

private ["_start","_panelOptions","_debugSelect","_displayDebug"];
_uid = getPlayerUID player;
if (_uid call isAdmin) then
{
	_start = createDialog "DebugMenu";

	_displayDebug = uiNamespace getVariable "DebugMenu";
	_debugSelect = _displayDebug displayCtrl debugMenu_option;

	_panelOptions = ["To Map Position",
					"Me to Player",
					"Player To Me"

	];

	{
		_debugSelect lbAdd _x;
	} forEach _panelOptions;
};
