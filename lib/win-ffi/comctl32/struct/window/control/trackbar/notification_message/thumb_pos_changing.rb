module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/user32/struct/window/control/notification_message/header'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tagtrbthumbposchanging
      class NMTRBTHUMBPOSCHANGING < FFIAdditions::Struct
        layout hdr:     User32::NMHDR,
               dwPos:   :dword,
               nReason: :int
      end
    end
  end
end