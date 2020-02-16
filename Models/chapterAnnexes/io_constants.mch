/* WARNING : LCHIP system source file, do not edit */

MACHINE
    io_constants
SEES
    g_types
ABSTRACT_CONSTANTS
    TIME,
    IO_STATE
CONCRETE_CONSTANTS
    IO_ON,
    IO_OFF
PROPERTIES
    TIME = uint32_t &
    IO_STATE = uint8_t &

    IO_ON : uint8_t &
    IO_OFF : uint8_t &
    IO_ON /= IO_OFF &
    IO_ON : IO_STATE &
    IO_OFF : IO_STATE
END
