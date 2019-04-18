require_relative '../../../../typedef/htreeitem'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tvitema
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tvitemw
    class TVITEM < FFIAdditions::Struct
      def mask; end
      def mask=(v) end
      def hItem; end
      def hItem=(v) end
      def state; end
      def state=(v) end
      def stateMask; end
      def stateMask=(v) end
      def pszText; end
      def pszText=(v) end
      def cchTextMax; end
      def cchTextMax=(v) end
      def iImage; end
      def iImage=(v) end
      def iSelectedImage; end
      def iSelectedImage=(v) end
      def cChildren; end
      def cChildren=(v) end
      def lParam; end
      def lParam=(v) end

      layout mask:           :uint,
             hItem:          :htreeitem,
             state:          :uint,
             stateMask:      :uint,
             pszText:        :string,
             cchTextMax:     :int,
             iImage:         :int,
             iSelectedImage: :int,
             cChildren:      :int,
             lParam:         :lparam
    end
  end
end