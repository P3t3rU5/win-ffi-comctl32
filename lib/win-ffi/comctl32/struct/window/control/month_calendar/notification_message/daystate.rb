require 'win-ffi/user32/struct/window/control/notification_message/header'
require 'win-ffi/kernel32/struct/time/system_time'

module WinFFI
  module Comctl32
    # typedef DWORD MONTHDAYSTATE, *LPMONTHDAYSTATE;
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmdaystate
    class NMDAYSTATE < FFIAdditions::Struct
      attr_accessor :nmhdr, :stStart, :cDayState, :prgDayState

      layout nmhdr:       User32::NMHDR,
             stStart:     Kernel32::SYSTEMTIME,
             cDayState:   :int,
             prgDayState: :dword
    end
  end
end
