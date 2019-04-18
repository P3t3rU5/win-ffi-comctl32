require 'win-ffi/user32/struct/window/control/notification_message/header'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmtbgetinfotipa
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmtbgetinfotipw
    class NMTBGETINFOTIP < FFIAdditions::Struct
      def hdr; end
      def hdr=(v) end
      def pszText; end
      def pszText=(v) end
      def cchTextMax; end
      def cchTextMax=(v) end
      def iItem; end
      def iItem=(v) end
      def lParam; end
      def lParam=(v) end

      layout hdr:        User32::NMHDR,
             pszText:    :string,
             cchTextMax: :int,
             iItem:      :int,
             lParam:     :lparam
    end
  end
end