require 'win-ffi/user32/struct/window/control/notification_message/header'

module WinFFI
  if WINDOWS_VERSION == :xp
    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmlvscroll
      class NMLVSCROLL < FFIAdditions::Struct
        def hdr; end
        def hdr=(v) end
        def dx; end
        def dx=(v) end
        def dy; end
        def dy=(v) end

        layout hdr: User32::NMHDR,
               dx:  :int,
               dy:  :int
      end
    end
  end
end