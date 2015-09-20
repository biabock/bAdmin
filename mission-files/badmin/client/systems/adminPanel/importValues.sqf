// *****************************************************************************************
// * This script is licensed under the GNU Lesser GPL v3. Copyright © 2015 A3Wasteland.com *
// *****************************************************************************************
//	@file Version: 1.0
//	@file Name: importValues.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 20/11/2012 05:19
//	@file Args:
// bAdmin Exile by Biabock

#define playerMenuDialog 55500
#define playerMenuPlayerSkin 55501
#define playerMenuPlayerGun 55502
#define playerMenuPlayerItems 55503
#define playerMenuPlayerPos 55504
#define playerMenuPlayerList 55505
#define playerMenuPlayerObject 55507
#define playerMenuPlayerHealth 55508

disableSerialization;

private ["_index1","_type1","_data1"];
_uid = getPlayerUID player;
if (_uid call isAdmin) then
{
	_index1 = _this select 1;
	_type1 = _this select 0;

	_dialogPlayer = findDisplay playerMenuDialog;
	_skinText = _dialogPlayer displayCtrl playerMenuPlayerSkin;
	_currentGunText = _dialogPlayer displayCtrl playerMenuPlayerGun;
	_itemsText = _dialogPlayer displayCtrl playerMenuPlayerItems;
	_posText = _dialogPlayer displayCtrl playerMenuPlayerPos;
	_healthText = _dialogPlayer displayCtrl playerMenuPlayerHealth;
	_objectText = _dialogPlayer displayCtrl playerMenuPlayerObject;
	_playerListBox = _dialogPlayer displayCtrl playerMenuPlayerList;

	    _data1 = _playerListBox lbData _index1;
	    {
	        if (str(_x) == _data1) exitwith {
	            _itemsText ctrlSetText format["Items: %1",weapons _x];
	            _currentGunText ctrlSetText format["Money: %1 Score: %2",_x getVariable "ExileMoney", _x getVariable "ExileScore"];
	            _skinText ctrlSetText format["Skin: %1",typeOf(_x)];
	            _posText ctrlSetText format["Position: %1",position _x];
	            _objectText ctrlSetText format["Slot: %1",_x];

	            //Calculate Health 0 - 100
				_decimalPlaces = 2;
				_health = damage _x;
				_health = round (_health * (10 ^ _decimalPlaces)) / (10 ^ _decimalPlaces);
				_health = 100 - (_health * 100);

	            _healthText ctrlSetText format["Health: %1",_health];
	        };
	    } foreach playableUnits;
};
