MACHINE
    logic
SEES
    g_types,
    g_operators,
    io_constants,
    lchip_interface,
    user_ctx
ABSTRACT_VARIABLES
    O1,
    O2
INVARIANT
    O1 : uint8_t &
    O2 : uint8_t
INITIALISATION
    O1 :: uint8_t ||
    O2 :: uint8_t
OPERATIONS
    user_logic = 
    BEGIN
        O1 :: uint8_t ||
        O2 :: uint8_t
    END;
    
    po <-- get_O1 =
    PRE
        po : uint8_t
    THEN
        po := O1
    END;
    
    po <-- get_O2 =
    PRE
        po : uint8_t
    THEN
        po := O2
    END
END
