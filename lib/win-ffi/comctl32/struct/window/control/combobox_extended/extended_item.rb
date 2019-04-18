require_relative '../../../../enum/window/control/combobox_extended/item_flag'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-comboboxexitema
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-comboboxexitema
    class COMBOBOXEXITEM < FFIAdditions::Struct
      def mask; end
      def mask=(v) end
      def iItem; end
      def iItem=(v) end
      def pszText; end
      def pszText=(v) end
      def cchTextMax; end
      def cchTextMax=(v) end
      def iImage; end
      def iImage=(v) end
      def iSelectedImage; end
      def iSelectedImage=(v) end
      def iOverlay; end
      def iOverlay=(v) end
      def iIndent; end
      def iIndent=(v) end
      def lParam; end
      def lParam=(v) end

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