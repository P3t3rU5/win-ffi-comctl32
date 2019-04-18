module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/core/struct/rect'
    require 'win-ffi/user32/struct/window/control/notification_message/header'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/api/Commctrl/ns-commctrl-tagnmbcdropdown
      class NMBCDROPDOWN < FFIAdditions::Struct
        layout hdr:      User32::NMHDR,
               rcButton: RECT
      end
    end
  end
end
