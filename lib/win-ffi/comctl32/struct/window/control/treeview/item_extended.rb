require_relative '../../../../enum/window/control/treeview/item_flag'
require_relative '../../../../enum/window/control/treeview/item_state'
require_relative '../../../../enum/window/control/treeview/item_state_extended'
require_relative '../../../../typedef/htreeitem'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-tvitemexa
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-tvitemexw
    class TVITEMEX < FFIAdditions::Struct
      attr_accessor :mask,
                    :hItem,
                    :state,
                    :stateMask,
                    :pszText,
                    :cchTextMax,
                    :iImage,
                    :iSelectedImage,
                    :cChildren,
                    :lParam,
                    :iIntegral

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
        attr_accessor :uStateEx, :hwnd, :iExpandedImage

        buffer.merge(
            uStateEx:       TreeViewItemStateExtended,
            hwnd:           :hwnd,
            iExpandedImage: :int
        )
        if WINDOWS_VERSION >= 7
          attr_accessor :iReserved

          buffer.merge(iReserved: :int)
        end
      end

      layout buffer
    end
  end
end