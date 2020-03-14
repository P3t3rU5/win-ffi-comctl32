require 'win-ffi/user32/struct/window/control/notification_message/header'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmtbgetinfotipa
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmtbgetinfotipw
    class NMTBGETINFOTIP < FFIAdditions::Struct
      attr_accessor :hdr,
                    :pszText,
                    :cchTextMax,
                    :iItem,
                    :lParam

      layout hdr:        User32::NMHDR,
             pszText:    :string,
             cchTextMax: :int,
             iItem:      :int,
             lParam:     :lparam
    end
  end
end