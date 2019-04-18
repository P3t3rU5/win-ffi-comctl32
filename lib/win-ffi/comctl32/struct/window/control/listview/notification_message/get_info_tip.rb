require 'win-ffi/user32/struct/window/control/notification_message/header'

module WinFFI
  module Comctl32
    ListviewGetInfoTip = enum :listview_get_info_tip, [:UNFOLDED, 0x0001]

    define_prefix(:LVGIT, ListviewGetInfoTip)

    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tagnmlvgetinfotipa
    class NMLVGETINFOTIP < FFIAdditions::Struct
      def hdr; end
      def hdr=(v) end
      def dwFlags; end
      def dwFlags=(v) end
      def pszText; end
      def pszText=(v) end
      def cchTextMax; end
      def cchTextMax=(v) end
      def iItem; end
      def iItem=(v) end
      def iSubIten; end
      def iSubIten=(v) end
      def lParam; end
      def lParam=(v) end

      layout hdr:        User32::NMHDR,
             dwFlags:    ListviewGetInfoTip,
             pszText:    :string,
             cchTextMax: :int,
             iItem:      :int,
             iSubIten:   :int,
             lParam:     :lparam
    end
  end
end