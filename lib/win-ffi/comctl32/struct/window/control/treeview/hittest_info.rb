require 'win-ffi/core/struct/point'

require_relative '../../../../enum/window/control/treeview/hittest'
require_relative '../../../../typedef/htreeitem'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tagtvhittestinfo
    class TVHITTESTINFO < FFIAdditions::Struct
      def pt; end
      def pt=(v) end
      def flags; end
      def flags=(v) end
      def hItem; end
      def hItem=(v) end

      layout pt:    POINT,
             flags: TreeViewHitTest,
             hItem: :htreeitem
    end
  end
end