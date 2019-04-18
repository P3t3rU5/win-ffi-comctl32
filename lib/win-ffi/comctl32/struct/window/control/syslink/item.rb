module WinFFI
  if WINDOWS_VERSION >= :vista
    require_relative '../../../../enum/window/control/syslink/flag'
    require_relative '../../../../enum/window/control/syslink/state'
    require_relative '../../../../constant'

    module Comctl32
      MAX_LINKID_TEXT = 48

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-taglitem
      class LITEM < FFIAdditions::Struct
        def mask; end
        def mask=(v) end
        def iLink; end
        def iLink=(v) end
        def state; end
        def state=(v) end
        def stateMask; end
        def stateMask=(v) end
        def szID; end
        def szID=(v) end
        def sxUrl; end
        def sxUrl=(v) end

        layout mask:      LinkItemFlag,
               iLink:     :int,
               state:     LinkItemState,
               stateMask: LinkItemState,
               szID:      [:wchar, MAX_LINKID_TEXT],
               sxUrl:     [:wchar, L_MAX_URL_LENGTH]
      end
    end
  end
end