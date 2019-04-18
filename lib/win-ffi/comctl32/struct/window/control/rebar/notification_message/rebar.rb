module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/user32/struct/window/control/notification_message/header'
    require_relative '../../../../../enum/window/control/rebar/notification_message'
    require_relative '../../../../../enum/window/control/rebar/band_style'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tagnmrebar
      class NMREBAR < FFIAdditions::Struct
        def hdr; end
        def hdr=(v) end
        def dwMask; end
        def dwMask=(v) end
        def uBand; end
        def uBand=(v) end
        def fStyle; end
        def fStyle=(v) end
        def wID; end
        def wID=(v) end
        def lParam; end
        def lParam=(v) end

        layout hdr:    User32::NMHDR,
               dwMask: RebarNotificationMessage,
               uBand:  :uint,
               fStyle: RebarBandStyle,
               wID:    :uint,
               lParam: :lparam
      end
    end
  end
end
