require 'win-ffi/user32/struct/window/control/notification_message/header'
require 'win-ffi/user32/enum/interaction/keyboard/virtual_key_code'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmtvkeydown
    class TVKEYDOWN < FFIAdditions::Struct
      def hdr; end
      def hdr=(v) end
      def wVKey; end
      def wVKey=(v) end
      def flags; end
      def flags=(v) end

      layout hdr:   User32::NMHDR,
             wVKey: User32::VirtualKeyCode,
             flags: :uint
    end
  end
end