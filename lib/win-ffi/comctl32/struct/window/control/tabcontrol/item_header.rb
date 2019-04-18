require_relative '../../../../../../win-ffi/comctl32/enum/window/control/tabcontrol/item_flag'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tcitemheader
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tcitemheader
    class TCITEMHEADER < FFIAdditions::Struct
      def mask; end
      def mask=(v) end
      def lpReserved1; end
      def lpReserved1=(v) end
      def lpReserved2; end
      def lpReserved2=(v) end
      def pszText; end
      def pszText=(v) end
      def cchTextMax; end
      def cchTextMax=(v) end
      def iImage; end
      def iImage=(v) end

      layout mask:        TabControlItemFlag,
             lpReserved1: :uint,
             lpReserved2: :uint,
             pszText:     :string,
             cchTextMax:  :int,
             iImage:      :int
    end
  end
end