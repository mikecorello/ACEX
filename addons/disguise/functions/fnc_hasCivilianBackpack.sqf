/*
 * Author: Corello
 * Check if the player's backpack is within the GVAR(civ_backpacks).
 *
 * Arguments:
 * 0: Player <OBJECT>
 *
 * Return Value:
 * Has civilian backpack <BOOL>
 *
 * Example:
 * [player] call acex_disguise_fnc_hasCivilianBackpack;
 *
 * Public: No
 */
#include "script_component.hpp"

params ["_player"];

private _playerBackpack = backpack _player;

GVAR(enable) &&
{(_playerBackpack == "") ||
{_playerBackpack in GVAR(civ_backpacks)}}
