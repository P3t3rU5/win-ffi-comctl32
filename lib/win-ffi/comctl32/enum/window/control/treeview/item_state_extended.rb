module WinFFI
  module Comctl32
    #if (_WIN32_IE >= 0x0600)
    buffer = [:FLAT,  0x0001, :ALL, 0x0002]

    buffer += [:DISABLED, 0x0002] if WINDOWS_VERSION >= :vista

    TreeViewItemStateExtended = enum :treeview_item_state_extended, buffer

    define_prefix(:TVIS_EX, TreeViewItemStateExtended)
  end
end
