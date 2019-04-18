require 'win-ffi/user32/struct/window/control/notification_message/header'
require 'win-ffi/core/struct/rect'
require_relative '../button'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmtoolbara
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmtoolbarw
    class NMTOOLBAR < FFIAdditions::Struct
      def hdr; end
      def hdr=(v) end
      def iItem; end
      def iItem=(v) end
      def tbButton; end
      def tbButton=(v) end
      def cchText; end
      def cchText=(v) end
      def pszText; end
      def pszText=(v) end
      def rcButton; end
      def rcButton=(v) end

      layout hdr:      User32::NMHDR,
             iItem:    :int,
             tbButton: TBBUTTON,
             cchText:  :int,
             pszText:  :string,
             rcButton: RECT

    end
  end
end