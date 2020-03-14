require 'win-ffi/user32/struct/window/control/notification_message/header'
require 'win-ffi/kernel32/struct/time/system_time'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmdatetimestringa
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmdatetimestringw
    class NMDATETIMESTRING < FFIAdditions::Struct
      attr_accessor :nmhdr, :pszUserString, :st, :dwFlags

      layout nmhdr:         User32::NMHDR,
             pszUserString: :string,
             st:            Kernel32::SYSTEMTIME,
             dwFlags:       :dword
    end
  end
end
