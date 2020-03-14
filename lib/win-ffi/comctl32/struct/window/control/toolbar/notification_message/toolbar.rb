require 'win-ffi/user32/struct/window/control/notification_message/header'
require 'win-ffi/core/struct/rect'
require_relative '../button'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmtoolbara
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmtoolbarw
    class NMTOOLBAR < FFIAdditions::Struct
      attr_accessor :hdr,
                    :iItem,
                    :tbButton,
                    :cchText,
                    :pszText,
                    :rcButton

      layout hdr:      User32::NMHDR,
             iItem:    :int,
             tbButton: TBBUTTON,
             cchText:  :int,
             pszText:  :string,
             rcButton: RECT

    end
  end
end