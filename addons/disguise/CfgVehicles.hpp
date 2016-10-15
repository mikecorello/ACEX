class CfgVehicles {
    class ACE_Module;
    class ACEX_ModuleDisguise: ACE_Module {
        author = "$STR_ACE_common_ACETeam";
        category = "ACEX";
        displayName = CSTRING(ModuleDisplayName);
        function = QFUNC(moduleInit);
        scope = 2;
        isGlobal = 1;
        isSingular = 1;
        icon = QUOTE(PATHTOF(UI\Icon_Module_Disguise_ca.paa));
        class Arguments {
            class enable {
                displayName = CSTRING(Enable);
                description = CSTRING(Enable);
                typeName = "BOOL";
                defaultValue = 1;
            };

            class ignoreNVG {
                displayName = CSTRING(IgnoreNVG);
                description = CSTRING(IgnoreNVG_Description);
                typeName = "BOOL";
                defaultValue = 0;
            };

            class headgear {
                displayName = CSTRING(Headgear);
                description = CSTRING(Headgear_Description);
                typeName = "STRING";
                defaultValue = "";
            };

            class goggles {
                displayName = CSTRING(Goggles);
                description = CSTRING(Goggles_Description);
                typeName = "STRING";
                defaultValue = "";
            };

            class uniforms {
                displayName = CSTRING(Uniforms);
                description = CSTRING(Uniforms_Description);
                typeName = "STRING";
                defaultValue = "";
            };

            class vests {
                displayName = CSTRING(Vests);
                description = CSTRING(Vests_Description);
                typeName = "STRING";
                defaultValue = "";
            };

            class backpacks {
                displayName = CSTRING(Backpacks);
                description = CSTRING(Backpacks_Description);
                typeName = "STRING";
                defaultValue = "";
            };

            class vehicles {
                displayName = CSTRING(Vehicles);
                description = CSTRING(Vehicles_Description);
                typeName = "STRING";
                defaultValue = "";
            };
        };
        class ModuleDescription {
            description = CSTRING(ModuleDescription);
        };
    };
};