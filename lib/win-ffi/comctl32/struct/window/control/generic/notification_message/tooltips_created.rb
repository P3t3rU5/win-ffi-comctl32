require 'win-ffi/user32/struct/window/control/notification_message/header'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmtooltipscreated
    class NMTOOLTIPSCREATED < FFIAdditions::Struct
      def hdr; end
      def hdr=(v) end
      def hwndToolTips; end
      def hwndToolTips=(v) end

      layout hdr:          User32::NMHDR,
             hwndToolTips: :hwnd
    end
  end
end
