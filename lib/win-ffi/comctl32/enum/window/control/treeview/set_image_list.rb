require 'win-ffi/comctl32'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/Controls/tvm-setimagelist
    TreeViewSetImageList = enum :treeview_set_image_list, [:NORMAL, 0, :STATE, 2]

    define_prefix(:TVSIL, TreeViewSetImageList)
  end
end
