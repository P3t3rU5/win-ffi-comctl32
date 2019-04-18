module WinFFI
  module Comctl32
    ListViewGroupState = enum :listview_group_state, [
        :NORMAL,            0x00000000,
        :COLLAPSED,         0x00000001,
        :HIDDEN,            0x00000002,
        :NOHEADER,          0x00000004,
        :COLLAPSIBLE,       0x00000008,
        :FOCUSED,           0x00000010,
        :SELECTED,          0x00000020,
        :SUBSETED,          0x00000040,
        :SUBSETLINKFOCUSED, 0x00000080
    ]

    define_prefix(:LVGS, ListViewGroupState)
  end
end