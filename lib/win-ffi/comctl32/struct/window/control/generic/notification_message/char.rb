require 'win-ffi/user32/struct/window/control/notification_message/header'
require 'win-ffi/core/struct/point'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmchar
    class NMCHAR < FFIAdditions::Struct
      attr_accessor :hdr, :ch, :dwItemPrev, :dwItemNext

      layout hdr:        User32::NMHDR,
             ch:         :uint,
             dwItemPrev: :dword,
             dwItemNext: :dword
    end
  end
end
