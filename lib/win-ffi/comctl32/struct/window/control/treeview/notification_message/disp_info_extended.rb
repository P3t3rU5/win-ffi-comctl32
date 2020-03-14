module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/user32/struct/window/control/notification_message/header'

    require_relative '../../treeview/item_extended'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmtvdispinfoexa
      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmtvdispinfoexw
      class NMTVDISPINFOEX < FFIAdditions::Struct
        attr_accessor :hdr, :item

        layout hdr:  User32::NMHDR,
               item: TVITEMEX
      end
    end
  end
end