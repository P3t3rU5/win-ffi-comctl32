module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/core/struct/rect'
    require 'win-ffi/user32/struct/window/control/notification_message/header'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tagnmhdfilterbtnclick
      class NMHDFILTERBTNCLICK < FFIAdditions::Struct
        def hdr; end
        def hdr=(v) end
        def iItem; end
        def iItem=(v) end
        def rc; end
        def rc=(v) end

        layout hdr:   User32::NMHDR,
               iItem: :int,
               rc:    RECT
      end
    end
  end
end