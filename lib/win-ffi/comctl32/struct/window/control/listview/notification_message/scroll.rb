require 'win-ffi/user32/struct/window/control/notification_message/header'

module WinFFI
  if WINDOWS_VERSION == :xp
    module Comctl32
      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmlvscroll
      class NMLVSCROLL < FFIAdditions::Struct
        attr_accessor :hdr, :dx, :dy

        layout hdr: User32::NMHDR,
               dx:  :int,
               dy:  :int
      end
    end
  end
end