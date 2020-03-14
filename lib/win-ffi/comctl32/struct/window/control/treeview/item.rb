require_relative '../../../../typedef/htreeitem'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-tvitema
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-tvitemw
    class TVITEM < FFIAdditions::Struct
      attr_accessor :mask,
                    :hItem,
                    :state,
                    :stateMask,
                    :pszText,
                    :cchTextMax,
                    :iImage,
                    :iSelectedImage,
                    :cChildren,
                    :lParam

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