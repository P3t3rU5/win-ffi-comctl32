require 'win-ffi/user32/struct/window/control/notification_message/header'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmipaddress
    class NMIPADDRESS < FFIAdditions::Struct
      attr_accessor :hdr, :iField, :iValue

      layout hdr:    User32::NMHDR,
             iField: :int,
             iValue: :int
    end
  end
end
