/*
 * Author: Corello
 * Check if the player is inside a civilian vehicle, which is within the GVAR(civ_vehicles).
 *
 * Arguments:
 * 0: Player <OBJECT>
 *
 * Return Value:
 * Inside civilian vehicle <BOOL>
 *
 * Example:
 * [player] call acex_disguise_fnc_isInsideCivilianVehicle;
 *
 * Public: No
 */
#include "script_component.hpp"

params ["_player"];

private _playerVehicle = vehicle _player;

GVAR(enable) &&
{(_player != _playerVehicle) &&
{[_playerVehicle] call FUNC(isCivilianVehicle)}}
