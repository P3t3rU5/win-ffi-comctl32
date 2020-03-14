module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/core/struct/rect'
    require 'win-ffi/user32/struct/window/control/notification_message/header'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmhdfilterbtnclick
      class NMHDFILTERBTNCLICK < FFIAdditions::Struct
        attr_accessor :hdr, :iItem, :rc

        layout hdr:   User32::NMHDR,
               iItem: :int,
               rc:    RECT
      end
    end
  end
end