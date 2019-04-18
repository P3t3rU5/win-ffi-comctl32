module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/user32/struct/window/control/notification_message/header'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-_nm_updown
      class NMUPDOWN < FFIAdditions::Struct
        def hdr; end
        def hdr=(v) end
        def iPos; end
        def iPos=(v) end
        def iDelta; end
        def iDelta=(v) end

        layout hdr:    User32::NMHDR,
               iPos:   :int,
               iDelta: :int
      end
    end
  end
end