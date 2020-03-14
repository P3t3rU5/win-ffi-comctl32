require 'win-ffi/user32/struct/window/control/notification_message/header'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmtooltipscreated
    class NMTOOLTIPSCREATED < FFIAdditions::Struct
      attr_accessor :hdr, :hwndToolTips

      layout hdr:          User32::NMHDR,
             hwndToolTips: :hwnd
    end
  end
end
