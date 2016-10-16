/*
 * Author: Corello
 * Check if the player has NVG's and whether to ignore them.
 *
 * Arguments:
 * 0: Player <OBJECT>
 *
 * Return Value:
 * Ignore NVG's <BOOL>
 *
 * Example:
 * [player] call acex_disguise_fnc_ignoreNightvision;
 *
 * Public: No
 */
#include "script_component.hpp"

params ["_player"];

private _playerNVGs = hmd _player;

GVAR(enable) &&
{GVAR(ignoreNVG) &&
{_playerNVGs != ""} ||
{_playerNVGS == ""}}