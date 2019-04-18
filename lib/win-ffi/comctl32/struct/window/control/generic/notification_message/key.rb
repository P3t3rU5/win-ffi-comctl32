require 'win-ffi/user32/struct/window/control/notification_message/header'
require 'win-ffi/user32/enum/interaction/keyboard/virtual_key_code'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmkey
    class NMKEY < FFIAdditions::Struct
      def hdr; end
      def hdr=(v) end
      def nVKey; end
      def nVKey=(v) end
      def uFlags; end
      def uFlags=(v) end

      layout hdr:    User32::NMHDR,
             nVKey:  User32::VirtualKeyCode,
             uFlags: :uint
    end
  end
end
