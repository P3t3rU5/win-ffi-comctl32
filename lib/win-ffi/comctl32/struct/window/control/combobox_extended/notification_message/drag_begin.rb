require 'win-ffi/user32/struct/window/control/notification_message/header'
require_relative '../../../../../constant'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmcbedragbegina
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmcbedragbeginw
    class NMCBEDRAGBEGIN < FFIAdditions::Struct
      attr_accessor :hdr, :iItemid, :szText

      layout hdr:     User32::NMHDR,
             iItemid: :int,
             szText:  [:wchar, CBEMAXSTRLEN]
    end
  end
end