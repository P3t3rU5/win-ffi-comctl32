require 'win-ffi/user32/struct/window/control/notification_message/header'

require_relative 'item'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmlvdispinfoa
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmlvdispinfow
    class NMLVDISPINFO < FFIAdditions::Struct
      def hdr; end
      def hdr=(v) end
      def item; end
      def item=(v) end

      layout hdr:  User32::NMHDR,
             item: LVITEM
    end
  end
end