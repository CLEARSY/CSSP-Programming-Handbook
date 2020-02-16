MACHINE
    logic
SEES
    g_types,
    g_operators,
    io_constants,
    lchip_interface,
    user_ctx
ABSTRACT_VARIABLES
    board_0_O1,
	board_0_O2
INVARIANT
    board_0_O1 : uint8_t &
	board_0_O2 : uint8_t
INITIALISATION
    board_0_O1 :: uint8_t ||
	board_0_O2 :: uint8_t
OPERATIONS
    user_logic = skip;

    po <-- get_board_0_O1 =
	PRE
		po : uint8_t
	THEN
		po := board_0_O1
	END;

	po <-- get_board_0_O2 =
	PRE
		po : uint8_t
	THEN
		po := board_0_O2
	END
END
