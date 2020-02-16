/* WARNING : LCHIP system source file, do not edit */

MACHINE
    user_configuration
SEES
    g_types,
    lchip_configuration
CONCRETE_CONSTANTS
    NB_MODULES,
    NB_INPUTS,
    NB_OUTPUTS,

    module_secu_ids,
    module_nb_inputs,
    module_nb_outputs,

    input_module_ids,
    input_local_ids,

    output_module_ids,
    output_local_ids
PROPERTIES
    NB_MODULES : uint8_t &
    NB_INPUTS : uint8_t &
    NB_OUTPUTS : uint8_t &
    NB_MODULES <= MAX_NB_MODULES &
    NB_INPUTS <= MAX_NB_INPUTS &
    NB_OUTPUTS <= MAX_NB_OUTPUTS &
    NB_MODULES = 1 &
    NB_INPUTS = 3 &
    NB_OUTPUTS = 2 &

    module_secu_ids : 0..0 --> uint32_t &
    module_nb_inputs : 0..0 --> uint8_t &
    module_nb_outputs : 0..0 --> uint8_t &

    input_module_ids : 0..2 --> uint8_t &
    input_local_ids : 0..2 --> uint8_t &

    output_module_ids : 0..1 --> uint8_t &
    output_local_ids : 0..1 --> uint8_t
END
