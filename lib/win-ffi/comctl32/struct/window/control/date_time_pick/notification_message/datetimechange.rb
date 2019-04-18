require 'win-ffi/user32/struct/window/control/notification_message/header'

require 'win-ffi/kernel32/struct/time/system_time'

require_relative '../../../../../enum/window/control/date_time_pick/flag'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmdatetimechange
    class NMDATETIMECHANGE < FFIAdditions::Struct
      def nmhdr; end
      def nmhdr=(v) end
      def dwFlags; end
      def dwFlags=(v) end
      def st; end
      def st=(v) end

      layout nmhdr:   User32::NMHDR,
             dwFlags: DateTimePickFlag,
             st:      Kernel32::SYSTEMTIME
    end
  end
end
