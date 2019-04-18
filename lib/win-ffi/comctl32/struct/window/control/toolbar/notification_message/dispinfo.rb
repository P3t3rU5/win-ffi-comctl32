require 'win-ffi/user32/struct/window/control/notification_message/header'

module WinFFI
  module Comctl32
    require_relative '../../../../../enum/window/control/toolbar/info'
    # https://docs.microsoft.com/en-us/windows/desktop/api/Commctrl/ns-commctrl-nmtbdispinfoa
    # https://docs.microsoft.com/en-us/windows/desktop/api/Commctrl/ns-commctrl-nmtbdispinfow
    class NMTBDISPINFO < FFIAdditions::Struct
      def hdr; end
      def hdr=(v) end
      def dwMask; end
      def dwMask=(v) end
      def idCommand; end
      def idCommand=(v) end
      def lParam; end
      def lParam=(v) end
      def iImage; end
      def iImage=(v) end
      def psztext; end
      def psztext=(v) end
      def cchTest; end
      def cchTest=(v) end

      layout hdr:       User32::NMHDR,
             dwMask:    ToolbarInfo,
             idCommand: :int,
             lParam:    :dword_ptr,
             iImage:    :int,
             psztext:   :string,
             cchTest:   :int
    end
  end
end