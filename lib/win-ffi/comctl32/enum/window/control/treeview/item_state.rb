module WinFFI
  module Comctl32
    TreeViewItemState = enum :treeview_item_state, [
        :SELECTED,       0x0002,
        :CUT,            0x0004,
        :DROPHILITED,    0x0008,
        :BOLD,           0x0010,
        :EXPANDED,       0x0020,
        :EXPANDEDONCE,   0x0040,
        :EXPANDPARTIAL,  0x0080,

        :OVERLAYMASK,    0x0F00,
        :STATEIMAGEMASK, 0xF000,
        :USERMASK,       0xF000
    ]

    define_prefix(:TVIS, TreeViewItemState)
  end
end
