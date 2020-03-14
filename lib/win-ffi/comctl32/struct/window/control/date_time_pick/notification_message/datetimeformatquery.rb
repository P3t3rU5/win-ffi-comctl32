require 'win-ffi/core/struct/size'
require 'win-ffi/user32/struct/window/control/notification_message/header'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmdatetimeformatquerya
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmdatetimeformatqueryw
    class NMDATETIMEFORMATQUERY < FFIAdditions::Struct
      attr_accessor :nmhdr, :pszFormat, :szMax

      layout nmhdr:     User32::NMHDR,
             pszFormat: :string,
             szMax:     SIZE
    end
  end
end
