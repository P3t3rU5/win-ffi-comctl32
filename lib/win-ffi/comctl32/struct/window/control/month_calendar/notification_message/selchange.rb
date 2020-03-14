require 'win-ffi/user32/struct/window/control/notification_message/header'
require 'win-ffi/kernel32/struct/time/system_time'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmselchange
    class NMSELCHANGE < FFIAdditions::Struct
      attr_accessor :nmhdr, :stSelStart, :stSelEnd

      layout nmhdr:      User32::NMHDR,
             stSelStart: Kernel32::SYSTEMTIME,
             stSelEnd:   Kernel32::SYSTEMTIME
    end
  end
end
