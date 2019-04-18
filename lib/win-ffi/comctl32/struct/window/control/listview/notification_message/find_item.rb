require 'win-ffi/user32/struct/window/control/notification_message/header'
require_relative '../find_info'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tagnmlvfinditema
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tagnmlvfinditemw
    class NMLVFINDITEM < FFIAdditions::Struct
      def hdr; end
      def hdr=(v) end
      def iStart; end
      def iStart=(v) end
      def lvfi; end
      def lvfi=(v) end

      layout hdr:    User32::NMHDR,
             iStart: :int,
             lvfi:   LVFINDINFO
    end
  end
end