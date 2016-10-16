/*
 * Author: Corello
 * Check if the player's headgear is within the GVAR(civ_headgear).
 *
 * Arguments:
 * 0: Player <OBJECT>
 *
 * Return Value:
 * Has civilian headgear <BOOL>
 *
 * Example:
 * [player] call acex_disguise_fnc_hasCivilianHeadgear;
 *
 * Public: No
 */
#include "script_component.hpp"

params ["_player"];

private _playerHeadgear = headgear _player;

GVAR(enable) &&
{(_playerHeadgear == "") ||
{_playerHeadgear in GVAR(civ_headgear)}}
