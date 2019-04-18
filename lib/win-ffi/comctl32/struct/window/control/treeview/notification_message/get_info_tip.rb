require 'win-ffi/user32/struct/window/control/notification_message/header'
require_relative '../../../../../typedef/htreeitem'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/Commctrl/ns-commctrl-tagnmtvgetinfotipa
    # https://docs.microsoft.com/en-us/windows/desktop/api/Commctrl/ns-commctrl-tagnmtvgetinfotipw
    class NMTVGETINFOTIP < FFIAdditions::Struct
      def hdr; end
      def hdr=(v) end
      def pszText; end
      def pszText=(v) end
      def cchTextMax; end
      def cchTextMax=(v) end
      def hItem; end
      def hItem=(v) end
      def lParam; end
      def lParam=(v) end

      layout hdr:        User32::NMHDR,
             pszText:    :string,
             cchTextMax: :int,
             hItem:      :htreeitem,
             lParam:     :lparam
    end
  end
end