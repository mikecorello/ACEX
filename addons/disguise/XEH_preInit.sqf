#include "script_component.hpp"

ADDON = false;

#include "XEH_PREP.hpp"

ADDON = true;

recompile = {
    #include XEH_PREP.sqf
};