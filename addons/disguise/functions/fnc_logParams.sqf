/*
 * Author: Corello
 * Logs the current module parameter values to the RPT.
 *
 * Arguments:
 * 0: The module logic <LOGIC>
 *
 * Return Value:
 * None
 *
 * Example:
 * [item] call acex_disguise_fnc_logParams;
 *
 * Public: No
 */
#include "script_component.hpp"

params ["_logItem"];

diag_log format["%1: %2", _logItem, GVAR(_logItem)];
INFO_2("%1: %2", _logItem, GVAR(_logItem));
hint "logParams called";