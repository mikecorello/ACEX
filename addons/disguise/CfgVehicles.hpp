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
                defaultValue = 0;
            };

            class uniforms {
                displayName = CSTRING(Param_Uniforms);
                description = CSTRING(Param_Uniforms_Description);
                typeName = "STRING";
                defaultValue = "";
            };
        };
        class ModuleDescription {
            description = CSTRING(ModuleDescription);
        };
    };
};
