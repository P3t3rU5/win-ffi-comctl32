require 'win-ffi/core/struct/rect'
require 'win-ffi/user32/struct/window/control/notification_message/header'

require_relative '../../../../../enum/window/control/pager/key'
require_relative '../../../../../enum/window/control/pager/scroll_flag'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmpgscroll
    class NMPGSCROLL < FFIAdditions::Struct
      def hdr; end
      def hdr=(v) end
      def fwKeys; end
      def fwKeys=(v) end
      def rcParent; end
      def rcParent=(v) end
      def iDir; end
      def iDir=(v) end
      def iXpos; end
      def iXpos=(v) end
      def iYpos; end
      def iYpos=(v) end
      def iScroll=(v) end
      def iScroll=(v) end

      layout hdr:      User32::NMHDR,
             fwKeys:   PagerKey,
             rcParent: RECT,
             iDir:     PagerScrollFlag,
             iXpos:    :int,
             iYpos:    :int,
             iScroll:  :int
    end
  end
end
