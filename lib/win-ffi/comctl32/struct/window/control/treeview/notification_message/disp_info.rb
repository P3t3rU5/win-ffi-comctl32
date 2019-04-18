require 'win-ffi/user32/struct/window/control/notification_message/header'

require_relative '../../../../../struct/window/control/treeview/item'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmtvdispinfoa
    class NMTVDISPINFO < FFIAdditions::Struct
      def hdr; end
      def hdr=(v) end
      def item; end
      def item=(v) end

      layout hdr:  User32::NMHDR,
             item: TVITEM
    end
  end
end