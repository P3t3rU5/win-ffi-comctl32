require 'win-ffi/user32/struct/window/control/notification_message/header'
require_relative '../../../../../typedef/htreeitem'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmtvgetinfotipa
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmtvgetinfotipw
    class NMTVGETINFOTIP < FFIAdditions::Struct
      attr_accessor :hdr,
                    :pszText,
                    :cchTextMax,
                    :hItem,
                    :lParam

      layout hdr:        User32::NMHDR,
             pszText:    :string,
             cchTextMax: :int,
             hItem:      :htreeitem,
             lParam:     :lparam
    end
  end
end