/* WARNING : LCHIP system source file, do not edit */

MACHINE
    lchip_interface
SEES
    g_types,
    user_configuration
ABSTRACT_VARIABLES
    ms_tick
INVARIANT
    ms_tick : uint32_t
INITIALISATION
    ms_tick := 0
OPERATIONS
    print_global_inputs=
    BEGIN
        skip
    END;

    state <-- read_global_input(input_id) =
    PRE
        input_id : uint8_t &
        input_id < NB_INPUTS &
        state : uint8_t
    THEN
        state :: uint8_t
    END;

    write_global_output(output_id, state) =
    PRE
        output_id : uint8_t &
        output_id < NB_OUTPUTS &
        state : uint8_t
    THEN
        skip
    END;

    out <-- get_ms_tick =
    PRE
        out : uint32_t
    THEN
        out := ms_tick
    END;

    print_uint8(tag, value) =
    PRE
        tag : uint8_t &
        value : uint8_t
    THEN
        skip
    END
END
