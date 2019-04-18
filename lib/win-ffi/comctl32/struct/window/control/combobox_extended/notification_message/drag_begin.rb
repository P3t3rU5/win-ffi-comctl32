require 'win-ffi/user32/struct/window/control/notification_message/header'
require_relative '../../../../../constant'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmcbedragbegina
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmcbedragbeginw
    class NMCBEDRAGBEGIN < FFIAdditions::Struct
      def hdr; end
      def hdr=(v) end
      def iItemid; end
      def iItemid=(v) end
      def szText; end
      def szText=(v) end

      layout hdr:     User32::NMHDR,
             iItemid: :int,
             szText:  [:wchar, CBEMAXSTRLEN]
    end
  end
end