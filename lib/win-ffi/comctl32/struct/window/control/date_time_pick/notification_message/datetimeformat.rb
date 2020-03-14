require 'win-ffi/user32/struct/window/control/notification_message/header'
require 'win-ffi/kernel32/struct/time/system_time'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmdatetimeformata
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmdatetimeformatw
    class NMDATETIMEFORMAT < FFIAdditions::Struct
      attr_accessor :nmhdr, :pszFormat, :st, :pszDisplay, :szDisplay

      layout nmhdr:      User32::NMHDR,
             pszFormat:  :string,
             st:         Kernel32::SYSTEMTIME,
             pszDisplay: :string,
             szDisplay:  [:char, 64]
    end
  end
end
