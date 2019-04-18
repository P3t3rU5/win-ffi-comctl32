module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/Controls/tvm-setborder
    TreeViewSetBorderFlag = enum :treeview_set_border_flag, [:XBORDER, 0x00000001, :YBORDER, 0x00000002]

    define_prefix(:TVSBF, TreeViewSetBorderFlag)
  end
end
