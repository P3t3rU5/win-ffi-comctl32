module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/user32/struct/window/control/notification_message/header'
    require 'win-ffi/core/struct/rect'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tagnmrebarchevron
      class NMREBARCHEVRON < FFIAdditions::Struct
        def hdr; end
        def hdr=(v) end
        def uBand; end
        def uBand=(v) end
        def wID; end
        def wID=(v) end
        def lParam; end
        def lParam=(v) end
        def rc; end
        def rc=(v) end
        def lParamNM; end
        def lParamNM=(v) end

        layout hdr:      User32::NMHDR,
               uBand:    :uint,
               wID:      :uint,
               lParam:   :lparam,
               rc:       RECT,
               lParamNM: :lparam

      end
    end
  end
end