module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/user32/struct/window/control/notification_message/header'
    require_relative '../item'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmlink
      class NMLINK < FFIAdditions::Struct
        attr_accessor :hdr, :item

        layout hdr:  User32::NMHDR,
               item: LITEM
      end
    end
  end
end