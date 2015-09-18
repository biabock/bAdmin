// *****************************************************************************************
// * This script is licensed under the GNU Lesser GPL v3. Copyright © 2015 A3Wasteland.com *
// *****************************************************************************************
//@file Name: toggleGodMode.sqf
// bAdmin Exile by Biabock

if (isDedicated) exitWith {};

if ((getPlayerUID player) call isAdmin) then
{
	_curPlayerInvulnState = player getVariable ["isAdminInvulnerable", false];

	if (!_curPlayerInvulnState) then
	{
		player setDamage 0;
		player allowDamage false;
		vehicle player setDamage 0;
		player setVariable ["isAdminInvulnerable", true, true];
		hint "You are now invulnerable";
	}
	else
	{
		player allowDamage true;
		player setVariable ["isAdminInvulnerable", false, true];
		hint "You are no longer invulnerable";
	};
};
