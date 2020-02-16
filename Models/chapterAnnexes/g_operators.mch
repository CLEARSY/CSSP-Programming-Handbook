/* WARNING : LCHIP system source file, do not edit */

MACHINE
    g_operators
SEES
    g_types
CONCRETE_CONSTANTS
    bitwise_sll_uint32,
    bitwise_srl_uint32,
    bitwise_not_uint32,
    bitwise_and_uint32,
    bitwise_xor_uint32,
    bitwise_or_uint32,
    bitwise_sll_uint16,
    bitwise_srl_uint16,
    bitwise_not_uint16,
    bitwise_and_uint16,
    bitwise_xor_uint16,
    bitwise_or_uint16,
    bitwise_sll_uint8,
    bitwise_srl_uint8,
    bitwise_not_uint8,
    bitwise_and_uint8,
    bitwise_xor_uint8,
    bitwise_or_uint8,

    add_uint32,
    sub_uint32,
    mul_uint32,
    add_uint16,
    sub_uint16,
    mul_uint16,
    add_uint8,
    sub_uint8,
    mul_uint8
PROPERTIES
    bitwise_sll_uint32 : uint32_t*uint8_t --> uint32_t &
    bitwise_srl_uint32 : uint32_t*uint8_t --> uint32_t &
    bitwise_not_uint32 : uint32_t --> uint32_t &
    bitwise_and_uint32 : uint32_t*uint32_t --> uint32_t &
    bitwise_xor_uint32 : uint32_t*uint32_t --> uint32_t &
    bitwise_or_uint32 : uint32_t*uint32_t --> uint32_t &
    bitwise_sll_uint16 : uint16_t*uint8_t --> uint16_t &
    bitwise_srl_uint16 : uint16_t*uint8_t --> uint16_t &
    bitwise_not_uint16 : uint16_t --> uint16_t &
    bitwise_and_uint16 : uint16_t*uint16_t --> uint16_t &
    bitwise_xor_uint16 : uint16_t*uint16_t --> uint16_t &
    bitwise_or_uint16 : uint16_t*uint16_t --> uint16_t &
    bitwise_sll_uint8 : uint8_t*uint8_t --> uint8_t &
    bitwise_srl_uint8 : uint8_t*uint8_t --> uint8_t &
    bitwise_not_uint8 : uint8_t --> uint8_t &
    bitwise_and_uint8 : uint8_t*uint8_t --> uint8_t &
    bitwise_xor_uint8 : uint8_t*uint8_t --> uint8_t &
    bitwise_or_uint8 : uint8_t*uint8_t --> uint8_t &

    add_uint32 : uint32_t*uint32_t --> uint32_t &
    sub_uint32 : uint32_t*uint32_t --> uint32_t &
    mul_uint32 : uint32_t*uint32_t --> uint32_t &
    add_uint16 : uint16_t*uint16_t --> uint16_t &
    sub_uint16 : uint16_t*uint16_t --> uint16_t &
    mul_uint16 : uint16_t*uint16_t --> uint16_t &
    add_uint8 : uint8_t*uint8_t --> uint8_t &
    sub_uint8 : uint8_t*uint8_t --> uint8_t &
    mul_uint8 : uint8_t*uint8_t --> uint8_t &

    bitwise_sll_uint32 = %(x1,x2).(x1 : uint32_t & x2 : uint8_t | (x1 * (2**x2)) mod (MAX_UINT32 + 1)) &
    bitwise_sll_uint16 = %(x1,x2).(x1 : uint16_t & x2 : uint8_t | (x1 * (2**x2)) mod (MAX_UINT16 + 1)) &
    bitwise_sll_uint8 = %(x1,x2).(x1 : uint8_t & x2 : uint8_t | (x1 * (2**x2)) mod (MAX_UINT8 + 1)) &
    bitwise_srl_uint32 = %(x1,x2).(x1 : uint32_t & x2 : uint8_t | x1 / (2**x2)) &
    bitwise_srl_uint16 = %(x1,x2).(x1 : uint16_t & x2 : uint8_t | x1 / (2**x2)) &
    bitwise_srl_uint8 = %(x1,x2).(x1 : uint8_t & x2 : uint8_t | x1 / (2**x2)) &

    add_uint32 = %(x1,x2).(x1 : uint32_t & x2 : uint32_t | (x1 + x2) mod (MAX_UINT32 + 1)) &
    sub_uint32 = %(x1,x2).(x1 : uint32_t & x2 : uint32_t | (x1 - x2 + MAX_UINT32 + 1) mod (MAX_UINT32 + 1)) &
    mul_uint32 = %(x1,x2).(x1 : uint32_t & x2 : uint32_t | (x1 * x2) mod (MAX_UINT32 + 1)) &
    add_uint16 = %(y1,y2).(y1 : uint16_t & y2 : uint16_t | (y1 + y2) mod (MAX_UINT16 + 1)) &
    sub_uint16 = %(y1,y2).(y1 : uint16_t & y2 : uint16_t | (y1 - y2 + MAX_UINT16 + 1) mod (MAX_UINT16 + 1)) &
    mul_uint16 = %(y1,y2).(y1 : uint16_t & y2 : uint16_t | (y1 * y2) mod (MAX_UINT16 + 1)) &
    add_uint8 = %(y1,y2).(y1 : uint8_t & y2 : uint8_t | (y1 + y2) mod (MAX_UINT8 + 1)) &
    sub_uint8 = %(y1,y2).(y1 : uint8_t & y2 : uint8_t | (y1 - y2 + MAX_UINT8 + 1) mod (MAX_UINT8 + 1)) &
    mul_uint8 = %(y1,y2).(y1 : uint8_t & y2 : uint8_t | (y1 * y2) mod (MAX_UINT8 + 1)) &

    !(ui1,ui2).(ui1 : uint16_t & ui2 : uint16_t
        => bitwise_and_uint16(ui1 |-> ui2) <= ui2) &

    !(ui1,ui2).(ui1 : uint32_t & ui2 : uint32_t
        => bitwise_and_uint32(ui1 |-> ui2) <= ui2)
END
