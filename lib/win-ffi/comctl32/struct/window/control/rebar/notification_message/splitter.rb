module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/core/struct/rect'
    require 'win-ffi/user32/struct/window/control/notification_message/header'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tagnmrebarsplitter
      class NMREBARSPLITTER < FFIAdditions::Struct
        def hdr; end
        def hdr=(v) end
        def rcSizing; end
        def rcSizing=(v) end

        layout hdr:      User32::NMHDR,
               rcSizing: RECT
      end
    end
  end
end