require 'win-ffi/user32/struct/window/control/notification_message/header'

module WinFFI
  module Comctl32
    require_relative '../../../../../enum/window/control/toolbar/info'
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmtbdispinfoa
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmtbdispinfow
    class NMTBDISPINFO < FFIAdditions::Struct
      attr_accessor :hdr,
                    :dwMask,
                    :idCommand,
                    :lParam,
                    :iImage,
                    :psztext,
                    :cchTest

      layout hdr:       User32::NMHDR,
             dwMask:    ToolbarInfo,
             idCommand: :int,
             lParam:    :dword_ptr,
             iImage:    :int,
             psztext:   :string,
             cchTest:   :int
    end
  end
end