require 'win-ffi/core/struct/rect'
require 'win-ffi/user32/struct/window/control/notification_message/header'

require_relative '../../../../../enum/window/control/pager/key'
require_relative '../../../../../enum/window/control/pager/scroll_flag'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmpgscroll
    class NMPGSCROLL < FFIAdditions::Struct
      attr_accessor :hdr,
                    :fwKeys,
                    :rcParent,
                    :iDir,
                    :iXpos,
                    :iYpos,
                    :iScroll

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
