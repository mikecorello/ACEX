/*
 * Author: Corello
 * Check if the player's vest is within the GVAR(civ_vests).
 *
 * Arguments:
 * 0: Player <OBJECT>
 *
 * Return Value:
 * Has civilian vest <BOOL>
 *
 * Example:
 * [player] call acex_disguise_fnc_hasCivilianVest;
 *
 * Public: No
 */
#include "script_component.hpp"

params ["_player"];

private _playerVest = vest _player;

GVAR(enable) &&
{(_playerVest == "") ||
{_playerVest in GVAR(civ_vests)}}
