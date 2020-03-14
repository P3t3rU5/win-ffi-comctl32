require 'win-ffi/user32/struct/window/control/notification_message/header'
require_relative '../find_info'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmlvfinditema
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmlvfinditemw
    class NMLVFINDITEM < FFIAdditions::Struct
      attr_accessor :hdr, :iStart, :lvfi

      layout hdr:    User32::NMHDR,
             iStart: :int,
             lvfi:   LVFINDINFO
    end
  end
end