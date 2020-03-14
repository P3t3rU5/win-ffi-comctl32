require 'win-ffi/user32/struct/window/control/notification_message/header'

module WinFFI
  module Comctl32
    ListviewGetInfoTip = enum :listview_get_info_tip, [:UNFOLDED, 0x0001]

    define_prefix(:LVGIT, ListviewGetInfoTip)

    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmlvgetinfotipa
    class NMLVGETINFOTIP < FFIAdditions::Struct
      attr_accessor :hdr,
                    :dwFlags,
                    :pszText,
                    :cchTextMax,
                    :iItem,
                    :iSubIten,
                    :lParam

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