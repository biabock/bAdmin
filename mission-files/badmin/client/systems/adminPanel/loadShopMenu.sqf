// *****************************************************************************************
// * This script is licensed under the GNU Lesser GPL v3. Copyright © 2015 A3Wasteland.com *
// *****************************************************************************************
//	@file Version: 1.0
//	@file Name: loadDebugMenu.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 20/11/2012 05:19
//	@file Args:
// bAdmin Exile by Biabock

#define shopMenu_option 50003
disableSerialization;

private ["_start","_panelOptions","_shopSelect","_displayShop"];
_uid = getPlayerUID player;
if (_uid call isAdmin) then
{
	_start = createDialog "ShopMenu";

	_displayShop = uiNamespace getVariable "ShopMenu";
	_shopSelect = _displayShop displayCtrl shopMenu_option;

	_panelOptions = ["Soon",
					"Soon",
					"Soon",
					"Soon"

	];

	{
		_shopSelect lbAdd _x;
	} forEach _panelOptions;
};
