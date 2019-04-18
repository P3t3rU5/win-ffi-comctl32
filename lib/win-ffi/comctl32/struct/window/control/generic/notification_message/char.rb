require 'win-ffi/user32/struct/window/control/notification_message/header'
require 'win-ffi/core/struct/point'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmchar
    class NMCHAR < FFIAdditions::Struct
      def hdr; end
      def hdr=(v) end
      def ch; end
      def ch=(v) end
      def dwItemPrev; end
      def dwItemPrev=(v) end
      def dwItemNext; end
      def dwItemNext=(v) end

      layout hdr:        User32::NMHDR,
             ch:         :uint,
             dwItemPrev: :dword,
             dwItemNext: :dword
    end
  end
end
