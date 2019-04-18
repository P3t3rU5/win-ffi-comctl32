module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/Controls/tvm-getnextitem
    buffer = [
        :ROOT,            0x0000,
        :NEXT,            0x0001,
        :PREVIOUS,        0x0002,
        :PARENT,          0x0003,
        :CHILD,           0x0004,
        :FIRSTVISIBLE,    0x0005,
        :NEXTVISIBLE,     0x0006,
        :PREVIOUSVISIBLE, 0x0007,
        :DROPHILITE,      0x0008,
        :CARET,           0x0009,
        :LASTVISIBLE,     0x000A
    ]

    buffer += [:NEXTSELECTED, 0x000B] if WINDOWS_VERSION >= :vista

    TreeViewGetNextItem = enum :treeview_get_next_item, buffer

    define_prefix(:TVGN, TreeViewGetNextItem)
  end
end
