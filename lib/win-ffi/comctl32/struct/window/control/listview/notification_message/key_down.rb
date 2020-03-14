require 'win-ffi/user32/struct/window/control/notification_message/header'
require 'win-ffi/user32/enum/interaction/keyboard/virtual_key_code'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmlvkeydown
    class NMLVKEYDOWN < FFIAdditions::Struct
      attr_accessor :hdr, :wVKey, :flags

      layout hdr:   User32::NMHDR,
             wVKey: :word,
             flags: User32::VirtualKeyCode
    end
  end
end