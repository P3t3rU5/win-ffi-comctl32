module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/Controls/tvm-expand
    TreeViewExpand = enum :treeview_expand, [
        :COLLAPSE,      0x0001,
        :EXPAND,        0x0002,
        :TOGGLE,        0x0003,
        :EXPANDPARTIAL, 0x4000,
        :COLLAPSERESET, 0x8000,
    ]

    define_prefix(:TVE, TreeViewExpand)
  end
end
