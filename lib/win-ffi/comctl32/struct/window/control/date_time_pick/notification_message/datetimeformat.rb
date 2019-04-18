require 'win-ffi/user32/struct/window/control/notification_message/header'
require 'win-ffi/kernel32/struct/time/system_time'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmdatetimeformata
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmdatetimeformatw
    class NMDATETIMEFORMAT < FFIAdditions::Struct
      def nmhdr; end
      def nmhdr=(v) end
      def pszFormat; end
      def pszFormat=(v) end
      def st; end
      def st=(v) end
      def pszDisplay; end
      def pszDisplay=(v) end
      def szDisplay; end
      def szDisplay=(v) end

      layout nmhdr:      User32::NMHDR,
             pszFormat:  :string,
             st:         Kernel32::SYSTEMTIME,
             pszDisplay: :string,
             szDisplay:  [:char, 64]
    end
  end
end
