require 'win-ffi/core/struct/point'
require 'win-ffi/user32/struct/window/control/notification_message/header'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmlistview
    class NMLISTVIEW < FFIAdditions::Struct
      attr_accessor :hdr,
                    :iItem,
                    :iSubItem,
                    :uNewState,
                    :uOldState,
                    :uChanged,
                    :ptAction,
                    :lParam

      layout hdr:       User32::NMHDR,
             iItem:     :int,
             iSubItem:  :int,
             uNewState: :uint,
             uOldState: :uint,
             uChanged:  :uint,
             ptAction:  POINT,
             lParam:    :lparam
    end
  end
end

