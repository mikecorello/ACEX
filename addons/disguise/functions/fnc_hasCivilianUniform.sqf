/*
 * Author: Corello
 * Check if the player's uniform is within the GVAR(civ_uniforms).
 *
 * Arguments:
 * 0: Player <OBJECT>
 *
 * Return Value:
 * Has civilian uniform <BOOL>
 *
 * Example:
 * [player] call acex_disguise_fnc_hasCivilianUniform;
 *
 * Public: No
 */
#include "script_component.hpp"

params ["_player"];

private _playerUniform = uniform _player;

GVAR(enable) &&
{(_playerUniform == "") ||
{_playerUniform in GVAR(civ_uniforms)}}
