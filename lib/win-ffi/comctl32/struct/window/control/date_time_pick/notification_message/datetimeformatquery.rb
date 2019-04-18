require 'win-ffi/core/struct/size'
require 'win-ffi/user32/struct/window/control/notification_message/header'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmdatetimeformatquerya
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmdatetimeformatqueryw
    class NMDATETIMEFORMATQUERY < FFIAdditions::Struct
      def nmhdr; end
      def nmhdr=(v) end
      def pszFormat; end
      def pszFormat=(v) end
      def szMax; end
      def szMax=(v) end

      layout nmhdr:     User32::NMHDR,
             pszFormat: :string,
             szMax:     SIZE
    end
  end
end
