/* WARNING : LCHIP system source file, do not edit */

MACHINE
    g_types
ABSTRACT_CONSTANTS
    Convert_Bool,
    SBOOL
CONCRETE_CONSTANTS
    uint32_t,
    uint16_t,
    uint8_t,

    STRUE,
    SFALSE,

    MAX_UINT32,
    MAX_UINT16,
    MAX_UINT8
PROPERTIES
    uint32_t = 0..4294967295 &
    uint16_t = 0..65535 &
    uint8_t = 0..255 &

    STRUE : uint8_t &
    SFALSE : uint8_t &

    MAX_UINT32 : uint32_t &
    MAX_UINT16 : uint16_t &
    MAX_UINT8 : uint8_t &

    STRUE : 0..MAX_UINT8 &
    SFALSE : 0..MAX_UINT8 &

    STRUE /= SFALSE &
    SBOOL = { STRUE, SFALSE } &
    STRUE <= 2 &
    SFALSE <= 2 &

    MAX_UINT32 = 4294967295 &
    MAX_UINT16 = 65535 &
    MAX_UINT8 = 255 &

    Convert_Bool = { TRUE |-> STRUE, FALSE |-> SFALSE }
ASSERTIONS
    Convert_Bool : BOOL +-> uint8_t &
    Convert_Bool : BOOL +-> uint16_t &
    Convert_Bool : BOOL +-> uint32_t
END
