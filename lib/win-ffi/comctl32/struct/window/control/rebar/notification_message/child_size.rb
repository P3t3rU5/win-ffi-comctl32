module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/core/struct/rect'
    require 'win-ffi/user32/struct/window/control/notification_message/header'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tagnmrebarchildsize
      class NMREBARCHILDSIZE < FFIAdditions::Struct
        def hdr; end
        def hdr=(v) end
        def uBand; end
        def uBand=(v) end
        def wID; end
        def wID=(v) end
        def rcChild; end
        def rcChild=(v) end
        def rcBand; end
        def rcBand=(v) end

        layout hdr:     User32::NMHDR,
               uBand:   :uint,
               wID:     :uint,
               rcChild: RECT,
               rcBand:  RECT
      end
    end
  end
end