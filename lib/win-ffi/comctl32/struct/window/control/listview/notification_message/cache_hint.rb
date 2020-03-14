require 'win-ffi/user32/struct/window/control/notification_message/header'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmlvcachehint
    class NMLVCACHEHINT < FFIAdditions::Struct
      attr_accessor :hdr, :iFrom, :iTo

      layout hdr:   User32::NMHDR,
             iFrom: :int,
             iTo:   :int
    end
  end
end