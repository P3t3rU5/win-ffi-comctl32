module WinFFI
  if WINDOWS_VERSION >= :xp
    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/Controls/tvm-selectitem
      TreeViewSelectItem = enum :treeview_select_item, [:NOSINGLEEXPAND, 0x8000]

      define_prefix(:TVSI, TreeViewSelectItem)
    end
  end
end
