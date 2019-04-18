require 'win-ffi/user32/struct/window/control/notification_message/header'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmipaddress
    class NMIPADDRESS < FFIAdditions::Struct
      def hdr; end
      def hdr=(v) end
      def iField; end
      def iField=(v) end
      def iValue; end
      def iValue=(v) end

      layout hdr:    User32::NMHDR,
             iField: :int,
             iValue: :int
    end
  end
end
