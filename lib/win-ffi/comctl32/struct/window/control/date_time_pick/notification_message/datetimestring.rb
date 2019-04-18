require 'win-ffi/user32/struct/window/control/notification_message/header'
require 'win-ffi/kernel32/struct/time/system_time'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmdatetimestringa
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmdatetimestringw
    class NMDATETIMESTRING < FFIAdditions::Struct
      def nmhdr; end
      def nmhdr=(v) end
      def pszUserString; end
      def pszUserString=(v) end
      def st; end
      def st=(v) end
      def dwFlags; end
      def dwFlags=(v) end

      layout nmhdr:         User32::NMHDR,
             pszUserString: :string,
             st:            Kernel32::SYSTEMTIME,
             dwFlags:       :dword
    end
  end
end
