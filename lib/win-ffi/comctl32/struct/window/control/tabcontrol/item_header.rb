require_relative '../../../../../../win-ffi/comctl32/enum/window/control/tabcontrol/item_flag'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-tcitemheadera
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-tcitemheaderw
    class TCITEMHEADER < FFIAdditions::Struct
      attr_accessor :mask,
                    :lpReserved1,
                    :lpReserved2,
                    :pszText,
                    :cchTextMax,
                    :iImage

      layout mask:        TabControlItemFlag,
             lpReserved1: :uint,
             lpReserved2: :uint,
             pszText:     :string,
             cchTextMax:  :int,
             iImage:      :int
    end
  end
end