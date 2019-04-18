module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/user32/struct/window/control/notification_message/header'

    require_relative '../../treeview/item_extended'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmtvdispinfoexa
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmtvdispinfoexw
      class NMTVDISPINFOEX < FFIAdditions::Struct
        def hdr; end
        def hdr=(v) end
        def item; end
        def item=(v) end

        layout hdr:  User32::NMHDR,
               item: TVITEMEX
      end
    end
  end
end