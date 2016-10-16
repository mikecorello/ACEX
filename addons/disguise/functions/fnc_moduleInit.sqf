/*
 * Author: Corello
 * Initializes the Disguise module.
 *
 * Arguments:
 * 0: The module logic <LOGIC>
 * 1: Units <ARRAY>
 * 2: Activated <BOOL>
 *
 * Return Value:
 * None
 *
 * Public: No
 */
#include "script_component.hpp"

if (!isServer) exitWith {};

params ["_logic", "_units", "_activated"];

if (!_activated) exitWith {};

[_logic, QGVAR(enable), "enable"] call ACEFUNC(common,readSettingFromModule);

GVAR(civ_headgear) = [_logic getVariable ["headgear", ""], false, false] call ACEFUNC(common,parseList);
GVAR(civ_goggles) = [_logic getVariable ["goggles", ""], false, false] call ACEFUNC(common,parseList);
GVAR(civ_uniforms) = [_logic getVariable ["uniforms", ""], false, false] call ACEFUNC(common,parseList);
GVAR(civ_vests) = [_logic getVariable ["vests", ""], false, false] call ACEFUNC(common,parseList);
GVAR(civ_backpacks) = [_logic getVariable ["backpacks", ""], false, false] call ACEFUNC(common,parseList);
GVAR(civ_vehicles) = [_logic getVariable ["vehicles", ""], false, false] call ACEFUNC(common,parseList);

INFO_1("Disguise Module Initialized. Enabled: %1", GVAR(enable));
INFO_1("Ignore NVG's: %1", GVAR(ignoreNVG));
INFO_1("Disguise Headgear: %1", GVAR(civ_headgear));
INFO_1("Disguise Goggles: %1", GVAR(civ_goggles));
INFO_1("Disguise Uniforms: %1", GVAR(civ_uniforms));
INFO_1("Disguise Vests: %1", GVAR(civ_vests));
INFO_1("Disguise Backpacks: %1", GVAR(civ_backpacks));
INFO_1("Disguise Vehicles: %1", GVAR(civ_vehicles));
