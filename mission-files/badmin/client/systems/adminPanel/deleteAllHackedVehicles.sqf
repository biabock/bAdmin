// *****************************************************************************************
// * This script is licensed under the GNU Lesser GPL v3. Copyright © 2015 A3Wasteland.com *
// *****************************************************************************************
// bAdmin Exile by Biabock
{ deleteVehicle (_x select 0) } forEach (call findHackedVehicles);

player commandChat "All Hacked Vehicles Deleted";

closeDialog 0;
execVM "badmin\client\systems\adminPanel\vehicleManagement.sqf";
