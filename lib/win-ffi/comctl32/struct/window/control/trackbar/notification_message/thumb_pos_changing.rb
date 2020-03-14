module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/user32/struct/window/control/notification_message/header'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmtrbthumbposchanging
      class NMTRBTHUMBPOSCHANGING < FFIAdditions::Struct
        attr_accessor :hdr, :dwPos, :nReason

        layout hdr:     User32::NMHDR,
               dwPos:   :dword,
               nReason: :int
      end
    end
  end
end