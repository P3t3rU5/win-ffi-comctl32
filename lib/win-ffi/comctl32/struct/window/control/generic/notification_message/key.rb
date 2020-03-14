require 'win-ffi/user32/struct/window/control/notification_message/header'
require 'win-ffi/user32/enum/interaction/keyboard/virtual_key_code'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmkey
    class NMKEY < FFIAdditions::Struct
      attr_accessor :hdr, :nVKey, :uFlags

      layout hdr:    User32::NMHDR,
             nVKey:  User32::VirtualKeyCode,
             uFlags: :uint
    end
  end
end
