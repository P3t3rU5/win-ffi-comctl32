require_relative '../../../../../../win-ffi/comctl32/enum/window/control/tabcontrol/item_flag'
require_relative '../../../../../../win-ffi/comctl32/enum/window/control/tabcontrol/item_state'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tcitema
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tcitemw
    class TCITEM < FFIAdditions::Struct
      layout mask:        TabControlItemFlag,
             dwState:     TabControlItemState,
             dwStateMask: :dword,
             pszText:     :string,
             cchTextMax:  :int,
             iImage:      :int
    end
  end
end