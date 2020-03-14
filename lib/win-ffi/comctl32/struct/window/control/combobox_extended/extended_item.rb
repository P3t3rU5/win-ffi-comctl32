require_relative '../../../../enum/window/control/combobox_extended/item_flag'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-comboboxexitema
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-comboboxexitemw
    class COMBOBOXEXITEM < FFIAdditions::Struct
      attr_accessor :mask,
                    :iItem,
                    :pszText,
                    :cchTextMax,
                    :iImage,
                    :iSelectedImage,
                    :iOverlay,
                    :iIndent,
                    :lParam

      layout mask:           ComboboxExtendedItemFlag,
             iItem:          :int_ptr,
             pszText:        :string,
             cchTextMax:     :int,
             iImage:         :int,
             iSelectedImage: :int,
             iOverlay:       :int,
             iIndent:        :int,
             lParam:         :lparam
    end
  end
end