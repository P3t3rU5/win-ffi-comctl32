module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/Controls/list-view-item-states
    ListViewItemState = enum :listview_item_state, [
        :FOCUSED,        0x0001,
        :SELECTED,       0x0002,
        :CUT,            0x0004,
        :DROPHILITED,    0x0008,
        :GLOW,           0x0010,
        :ACTIVATING,     0x0020,

        :OVERLAYMASK,    0x0F00,
        :STATEIMAGEMASK, 0xF000,
    ]

    define_prefix(:LVIS, ListViewItemState)
  end
end
