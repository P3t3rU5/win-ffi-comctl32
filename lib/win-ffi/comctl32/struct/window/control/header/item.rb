module WinFFI
  if WINDOWS_VERSION >= :vista
    require_relative '../../../../enum/window/control/header/format'
    require_relative '../../../../enum/window/control/header/filter_type'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-_hd_itema
      HeaderItemState = enum :header_item_state, [:FOCUSED, 0x00000001]

      define_prefix(:HDIS, HeaderItemState)

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-_hd_itema
      class HDITEM < FFIAdditions::Struct
        def mask; end
        def mask=(v) end
        def cxy; end
        def cxy=(v) end
        def pszText; end
        def pszText=(v) end
        def hbm; end
        def hbm=(v) end
        def cchTextMax; end
        def cchTextMax=(v) end
        def fmt; end
        def fmt=(v) end
        def lParam; end
        def lParam=(v) end
        def iImage; end
        def iImage=(v) end
        def iOrder; end
        def iOrder=(v) end
        def type; end
        def type=(v) end
        def pvFilter; end
        def pvFilter=(v) end
        def state; end
        def state=(v) end

        layout mask:       :uint,
               cxy:        :int,
               pszText:    :string,
               hbm:        :hbitmap,
               cchTextMax: :int,
               fmt:        HeaderFormat,
               lParam:     :lparam,
               iImage:     :int,
               iOrder:     :int,
               type:       HeaderFilterType,
               pvFilter:   :pointer,
               state:      HeaderItemState
      end
    end
  end
end