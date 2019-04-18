require_relative '../../../../enum/window/control/treeview/item_flag'
require_relative '../../../../enum/window/control/treeview/item_state'
require_relative '../../../../enum/window/control/treeview/item_state_extended'
require_relative '../../../../typedef/htreeitem'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tvitemexa
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tvitemexw
    class TVITEMEX < FFIAdditions::Struct
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
      def iIntegral; end
      def iIntegral=(v) end

      buffer = {
          mask:           TreeViewItemFlag,
          hItem:          :htreeitem,
          state:          TreeViewItemState,
          stateMask:      :uint,
          pszText:        :string,
          cchTextMax:     :int,
          iImage:         :int,
          iSelectedImage: :int,
          cChildren:      :int,
          lParam:         :lparam,
          iIntegral:      :int
      }

      if WINDOWS_VERSION >= :vista
        def uStateEx; end
        def uStateEx=(v) end
        def hwnd; end
        def hwnd=(v) end
        def iExpandedImage; end
        def iExpandedImage=(v) end

        buffer.merge(
            uStateEx:       TreeViewItemStateExtended,
            hwnd:           :hwnd,
            iExpandedImage: :int
        )
        if WINDOWS_VERSION >= 7
          def iReserved; end
          def iReserved=(v) end

          buffer.merge(iReserved: :int)
        end
      end

      layout buffer
    end
  end
end