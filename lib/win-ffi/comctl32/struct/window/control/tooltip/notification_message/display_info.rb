module WinFFI
  require 'win-ffi/user32/struct/window/control/notification_message/header'
  require_relative '../../../../../enum/window/control/tooltip/flag'

  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmttdispinfoa
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmttdispinfow
    class NMTTDISPINFO < FFIAdditions::Struct # TOOLTIPTEXT
      attr_accessor :hdr,
                    :lpszText,
                    :szText,
                    :hinst,
                    :uFlags,
                    :lParam

      layout hdr:      User32::NMHDR,
             lpszText: :string,
             szText:   [:char, 80],
             hinst:    :hinstance,
             uFlags:   TooltipInfoFlag,
             lParam:   :lparam
    end
  end
end