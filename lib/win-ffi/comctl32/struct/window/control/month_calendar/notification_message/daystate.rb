require 'win-ffi/user32/struct/window/control/notification_message/header'
require 'win-ffi/kernel32/struct/time/system_time'

module WinFFI
  module Comctl32
    # typedef DWORD MONTHDAYSTATE, *LPMONTHDAYSTATE;
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmdaystate
    class NMDAYSTATE < FFIAdditions::Struct
      def nmhdr; end
      def nmhdr=(v) end
      def stStart; end
      def stStart=(v) end
      def cDayState; end
      def cDayState=(v) end
      def prgDayState; end
      def prgDayState=(v) end

      layout nmhdr:       User32::NMHDR,
             stStart:     Kernel32::SYSTEMTIME,
             cDayState:   :int,
             prgDayState: :dword
    end
  end
end
