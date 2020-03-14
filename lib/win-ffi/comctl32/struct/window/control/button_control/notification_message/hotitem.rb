module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/user32/struct/window/control/notification_message/header'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmbchotitem
      class NMBCHOTITEM < FFIAdditions::Struct
        attr_accessor :hdr, :dwFlags

        layout hdr:     User32::NMHDR,
               dwFlags: :dword
      end
    end
  end
end
