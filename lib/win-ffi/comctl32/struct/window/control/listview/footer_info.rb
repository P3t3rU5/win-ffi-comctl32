module WinFFI
  module Comctl32
    ListviewFooterFlag = enum :listview_footer_flag, [:ITEMCOUNT, 0x00000001]

    define_prefix(:LVFF, ListviewFooterFlag)

    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-taglvfooterinfo
    class LVFOOTERINFO < FFIAdditions::Struct
      def mask; end
      def mask=(v) end
      def pszText; end
      def pszText=(v) end
      def cchTextMax; end
      def cchTextMax=(v) end
      def cItems; end
      def cItems=(v) end

      layout mask:       ListviewFooterFlag,
             pszText:    :string,
             cchTextMax: :int,
             cItems:     :uint
    end
  end
end