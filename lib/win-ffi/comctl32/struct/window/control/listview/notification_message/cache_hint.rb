require 'win-ffi/user32/struct/window/control/notification_message/header'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmlvcachehint
    class NMLVCACHEHINT < FFIAdditions::Struct
      def hdr; end
      def hdr=(v) end
      def iFrom; end
      def iFrom=(v) end
      def iTo; end
      def iTo=(v) end

      layout hdr:   User32::NMHDR,
             iFrom: :int,
             iTo:   :int
    end
  end
end