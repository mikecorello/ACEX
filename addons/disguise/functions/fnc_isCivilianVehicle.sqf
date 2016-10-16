/*
 * Author: Corello
 * Check if the specified vehicle is a civilian vehicle, which is within the GVAR(civ_vehicles).
 *
 * Arguments:
 * 0: Player <OBJECT>
 *
 * Return Value:
 * Is a civilian vehicle <BOOL>
 *
 * Example:
 * [vehicle] call acex_disguise_fnc_isCivilianVehicle;
 *
 * Public: No
 */
#include "script_component.hpp"

params ["_vehicle"];

GVAR(enable) &&
{(typeOf _vehicle) in GVAR(civ_vehicles)}