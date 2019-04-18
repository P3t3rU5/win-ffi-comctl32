module WinFFI
  require 'win-ffi/user32/struct/window/control/notification_message/header'
  require_relative '../../../../../enum/window/control/tooltip/flag'

  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tagnmttdispinfoa
    class NMTTDISPINFO < FFIAdditions::Struct # TOOLTIPTEXT
      def hdr; end
      def hdr=(v) end
      def lpszText; end
      def lpszText=(v) end
      def szText; end
      def szText=(v) end
      def hinst; end
      def hinst=(v) end
      def uFlags; end
      def uFlags=(v) end
      def lParam; end
      def lParam=(v) end

      layout hdr:      User32::NMHDR,
             lpszText: :string,
             szText:   [:char, 80],
             hinst:    :hinstance,
             uFlags:   TooltipInfoFlag,
             lParam:   :lparam
    end
  end
end