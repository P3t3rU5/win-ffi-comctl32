require 'win-ffi/core/struct/point'

require_relative '../../../../enum/window/control/treeview/hittest'
require_relative '../../../../typedef/htreeitem'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-tvhittestinfo
    class TVHITTESTINFO < FFIAdditions::Struct
      attr_accessor :pt, :flags, :hItem

      layout pt:    POINT,
             flags: TreeViewHitTest,
             hItem: :htreeitem
    end
  end
end