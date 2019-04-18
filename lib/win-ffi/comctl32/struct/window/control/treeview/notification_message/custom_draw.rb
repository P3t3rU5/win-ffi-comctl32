require 'win-ffi/user32/struct/window/control/notification_message/header'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmtvcustomdraw
    class NMTVCUSTOMDRAW < FFIAdditions::Struct
      def hdr; end
      def hdr=(v) end
      def clrText; end
      def clrText=(v) end
      def clrTextBk; end
      def clrTextBk=(v) end
      def iLevel; end
      def iLevel=(v) end

      layout hdr:       User32::NMHDR,
             clrText:   :colorref,
             clrTextBk: :colorref,
             iLevel:    :int
    end
  end
end