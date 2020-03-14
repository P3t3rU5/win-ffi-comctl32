require_relative '../../../../../../win-ffi/comctl32/enum/window/control/tabcontrol/item_flag'
require_relative '../../../../../../win-ffi/comctl32/enum/window/control/tabcontrol/item_state'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-tcitema
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-tcitemw
    class TCITEM < FFIAdditions::Struct
      attr_accessor :mask,
                    :dwState,
                    :dwStateMask,
                    :pszText,
                    :cchTextMax,
                    :iImage

      layout mask:        TabControlItemFlag,
             dwState:     TabControlItemState,
             dwStateMask: :dword,
             pszText:     :string,
             cchTextMax:  :int,
             iImage:      :int
    end
  end
end