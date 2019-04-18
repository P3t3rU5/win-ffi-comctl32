module WinFFI
  module Comctl32
    buffer = [
        :TEXT,          0x0001,
        :IMAGE,         0x0002,
        :PARAM,         0x0004,
        :STATE,         0x0008,
        :HANDLE,        0x0010,
        :SELECTEDIMAGE, 0x0020,
        :CHILDREN,      0x0040,
        :INTEGRAL,      0x0080
    ]

    buffer += [:STATEEX, 0x0100, :EXPANDEDIMAGE, 0x0200] if WINDOWS_VERSION >= :vista

    TreeViewItemFlag = enum :treeview_item_flag, buffer

    define_prefix(:TVIF, TreeViewItemFlag)
  end
end
