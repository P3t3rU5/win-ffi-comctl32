module WinFFI
  module Comctl32
    TreeViewChanged = enum :treeview_changed, [
        :UNKNOWN,    0x0000,
        :BYMOUSE,    0x0001,
        :BYKEYBOARD, 0x0002,
    ]

    define_prefix(:TVC, TreeViewChanged)
  end
end
