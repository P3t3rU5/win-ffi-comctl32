require 'win-ffi/user32/struct/window/control/notification_message/header'
require 'win-ffi/kernel32/struct/time/system_time'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/Commctrl/ns-commctrl-tagnmselchange
    class NMSELCHANGE < FFIAdditions::Struct
      def nmhdr; end
      def nmhdr=(v) end
      def stSelStart; end
      def stSelStart=(v) end
      def stSelEnd; end
      def stSelEnd=(v) end

      layout nmhdr:      User32::NMHDR,
             stSelStart: Kernel32::SYSTEMTIME,
             stSelEnd:   Kernel32::SYSTEMTIME
    end
  end
end
