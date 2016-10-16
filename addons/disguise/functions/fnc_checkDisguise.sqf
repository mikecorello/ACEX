/*
 * Author: Corello
 * Check the players disguise status.
 *
 * Arguments:
 * 0: Player <OBJECT>
 *
 * Return Value:
 * Is disguised <BOOL>
 *
 * Example:
 * [player] call acex_disguise_fnc_checkDisguise;
 *
 * Public: No
 */
#include "script_component.hpp"

params ["_player"];

hint parseText format["NVG: %1<br/>Headgear: %2<br/>Goggles: %3<br/>Uniform: %4<br/>Vest: %5<br/>Backpack: %6<br/>Civilian Vehicle: %7",
	['Not Disguised','Disguised'] select ([_player] call FUNC(ignoreNightvision)),
	['Not Disguised','Disguised'] select ([_player] call FUNC(hasCivilianHeadgear)),
	['Not Disguised','Disguised'] select ([_player] call FUNC(hasCivilianGoggles)),
	['Not Disguised','Disguised'] select ([_player] call FUNC(hasCivilianUniform)),
	['Not Disguised','Disguised'] select ([_player] call FUNC(hasCivilianVest)),
	['Not Disguised','Disguised'] select ([_player] call FUNC(hasCivilianBackpack)),
	['No','Yes'] select ([_player] call FUNC(isInsideCivilianVehicle))
];