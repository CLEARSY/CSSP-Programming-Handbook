/* WARNING : LCHIP system source file, do not edit */

MACHINE
    lchip_configuration
SEES
    g_types
CONCRETE_CONSTANTS
    MAX_NB_MODULES,
    MAX_NB_INPUTS,
    MAX_NB_OUTPUTS
PROPERTIES
    MAX_NB_MODULES : uint8_t &
    MAX_NB_INPUTS : uint8_t &
    MAX_NB_OUTPUTS : uint8_t &
    MAX_NB_MODULES = 1 &
    MAX_NB_INPUTS = 3 &
    MAX_NB_OUTPUTS = 2
END
