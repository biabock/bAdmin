// *****************************************************************************************
// * This script is licensed under the GNU Lesser GPL v3. Copyright © 2015 A3Wasteland.com *
// *****************************************************************************************
//	@file Version: 1.0
//	@file Name: optionSelect.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 20/11/2012 05:19
// bAdmin Exile by Biabock

#define debugMenu_option 50003
#define adminMenu_option 50001
disableSerialization;

private ["_panelType","_displayAdmin","_displayDebug","_displayShop","_adminSelect","_debugSelect","_shopSelect","_Poptabs","_Score"];
_uid = getPlayerUID player;
if (_uid call isAdmin) then
{
	_panelType = _this select 0;

	_displayAdmin = uiNamespace getVariable ["AdminMenu", displayNull];
	_displayDebug = uiNamespace getVariable ["DebugMenu", displayNull]; //tp menu
	_displayShop = uiNamespace getVariable ["ShopMenu", displayNull];

	switch (true) do
	{
		case (!isNull _displayAdmin): //Admin panel
		{
			_adminSelect = _displayAdmin displayCtrl adminMenu_option;

			switch (lbCurSel _adminSelect) do
			{
				case 0: //Player Menu
				{
					closeDialog 0;
					execVM "badmin\client\systems\adminPanel\playerMenu.sqf";
				};
				case 1: //Tags
				{
					closeDialog 0;
					execVM "badmin\client\systems\adminPanel\playerTags.sqf";
				};
				case 2: //Shop
				{
					closeDialog 0;
					execVM "badmin\client\systems\adminPanel\loadShopMenu.sqf";
				};
				case 3: //Add Money
				{
					_Poptabs = 10000;
					ExileClientPlayerMoney = ExileClientPlayerMoney + _Poptabs;
					systemChat "Added 10000 Poptabs for you";
				};
				case 4: //Add Score
				{
					_Score = 10000;
					ExileClientPlayerScore = ExileClientPlayerScore + _Score;
					systemChat "Added 10000 Score for you";
				};
				case 5: //TP Menu
				{
					closeDialog 0;
					execVM "badmin\client\systems\adminPanel\loadDebugMenu.sqf";
				};
				case 6: //Server FPS
				{
					hint format["Server FPS: %1",serverFPS];
				};
				case 7: // toggle God mode
				{
					execVM "badmin\client\systems\adminPanel\toggleGodMode.sqf";
				};
			};
		};
		case (!isNull _displayDebug): //TP panel
		{
			_debugSelect = _displayDebug displayCtrl debugMenu_option;

			switch (lbCurSel _debugSelect) do
			{
				case 0: //TP Map Position
				{
					closeDialog 0;
					onMapSingleClick "vehicle player setPos _pos; onMapSingleClick '';true;";
					hint "Click on map to teleport";
				};
				case 1: //TP Me to Player
				{
					closeDialog 0;
					execVM "badmin\client\systems\adminPanel\tpmeto.sqf";
				};
				case 2: //TP Player to Me
				{
					closeDialog 0;
					execVM "badmin\client\systems\adminPanel\tptome.sqf";
				};
			};
		};
		case (!isNull _displayShop): //Shop panel
		{
			_shopSelect = _displayShop displayCtrl shopMenu_option;

			switch (lbCurSel _debugSelect) do
			{
				case 0: //soon
				{
					closeDialog 0;
					systemChat "Not Implemented Yet";
				};
				case 1: //soon
				{
					closeDialog 0;
					systemChat "Not Implemented Yet";
				};
				case 2: //soon
				{
					closeDialog 0;
					systemChat "Not Implemented Yet";
				};
				case 3: //soon
				{
					closeDialog 0;
					systemChat "Not Implemented Yet";
				};
			};
		};
	};
};
