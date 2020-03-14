require 'win-ffi/user32/struct/window/control/notification_message/header'

require_relative '../../../../../struct/window/control/treeview/item'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmtvdispinfoa
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmtvdispinfow
    class NMTVDISPINFO < FFIAdditions::Struct
      attr_accessor :hdr, :item

      layout hdr:  User32::NMHDR,
             item: TVITEM
    end
  end
end