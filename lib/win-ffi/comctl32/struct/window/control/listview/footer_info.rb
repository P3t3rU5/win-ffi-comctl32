module WinFFI
  module Comctl32
    ListviewFooterFlag = enum :listview_footer_flag, [:ITEMCOUNT, 0x00000001]

    define_prefix(:LVFF, ListviewFooterFlag)

    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-lvfooterinfo
    class LVFOOTERINFO < FFIAdditions::Struct
      attr_accessor :mask, :pszText, :cchTextMax, :cItems

      layout mask:       ListviewFooterFlag,
             pszText:    :string,
             cchTextMax: :int,
             cItems:     :uint
    end
  end
end