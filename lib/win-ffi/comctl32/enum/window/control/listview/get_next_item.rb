module WinFFI
  module Comctl32
    ListviewGetNextItem = enum :listview_get_next_time, [
        :ALL,                0x0000,
        :FOCUSED,            0x0001,
        :SELECTED,           0x0002,
        :CUT,                0x0004,
        :DROPHILITED,        0x0008,
        :STATEMASK,          0x000F,
        :VISIBLEORDER,       0x0010,
        :PREVIOUS,           0x0020,
        :VISIBLEONLY,        0x0040,
        :SAMEGROUPONLY,      0x0080,
        :ABOVE,              0x0100,
        :BELOW,              0x0200,
        :TOLEFT,             0x0400,
        :TORIGHT,            0x0800,
        :DIRECTIONMASK,      0x0F00,
    ]

    define_prefix(:LVNI, ListviewGetNextItem)
  end
end