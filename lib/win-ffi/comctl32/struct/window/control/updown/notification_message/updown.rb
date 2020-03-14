module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/user32/struct/window/control/notification_message/header'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmupdown
      class NMUPDOWN < FFIAdditions::Struct
        attr_accessor :hdr, :iPos, :iDelta

        layout hdr:    User32::NMHDR,
               iPos:   :int,
               iDelta: :int
      end
    end
  end
end