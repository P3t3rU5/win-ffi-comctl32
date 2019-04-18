module WinFFI
  module Comctl32
    ListviewHittestInfo = enum :listview_hittest_info, [
        :NOWHERE,             0x00000001,
        :ONITEMICON,          0x00000002,
        :ONITEMLABEL,         0x00000004,
        :ONITEMSTATEICON,     0x00000008,
        :ONITEM,              0x0000000E,

        :ABOVE,               0x00000008,
        :BELOW,               0x00000010,
        :TORIGHT,             0x00000020,
        :TOLEFT,              0x00000040,

        :EX_GROUP_HEADER,     0x10000000,
        :EX_GROUP_FOOTER,     0x20000000,
        :EX_GROUP_COLLAPSE,   0x40000000,
        :EX_GROUP_BACKGROUND, 0x80000000,
        :EX_GROUP_STATEICON,  0x01000000,
        :EX_GROUP_SUBSETLINK, 0x02000000,
        :EX_GROUP,            0xF3000000,
        :EX_ONCONTENTS,       0x04000000,
        :EX_FOOTER,           0x08000000
    ]

    define_prefix(:LVHT, ListviewHittestInfo)
  end
end