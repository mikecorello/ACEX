/*
 * Author: Corello
 * Check if the player's goggles is within the GVAR(civ_goggles).
 *
 * Arguments:
 * 0: Player <OBJECT>
 *
 * Return Value:
 * Has civilian goggles <BOOL>
 *
 * Example:
 * [player] call acex_disguise_fnc_hasCivilianGoggles;
 *
 * Public: No
 */
#include "script_component.hpp"

params ["_player"];

private _playerGoggles = goggles _player;

GVAR(enable) &&
{(_playerGoggles == "") ||
{_playerGoggles in GVAR(civ_goggles)}}
