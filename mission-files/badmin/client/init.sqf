// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//@file Version: 1.1
//@file Name: init.sqf
//@file Author: [404] Deadbeat, [GoT] JoSchaap, AgentRev, [KoS] Bewilderbeest
//@file Created: 20/11/2012 05:19
//@file Description: The client init.

if (isDedicated) exitWith {};

[] execVM "badmin\client\camera\functions.sqf";

isAdmin = "badmin\client\systems\adminPanel\isAdmin.sqf" call mf_compile;//

diag_log "bAdmin - Client Compile Complete";