require 'win-ffi/user32/struct/window/control/notification_message/header'

require_relative '../../../../../enum/window/control/pager/calc_size_flag'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmpgcalcsize
    class NMPGCALCSIZE < FFIAdditions::Struct
      def hdr; end
      def hdr=(v) end
      def dwFlags; end
      def dwFlags=(v) end
      def iWidth; end
      def iWidth=(v) end
      def iHeight; end
      def iHeight=(v) end

      layout hdr:     User32::NMHDR,
             dwFlags: PagerCalcSizeFlag,
             iWidth:  :int,
             iHeight: :int
    end
  end
end
