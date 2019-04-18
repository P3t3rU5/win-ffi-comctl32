module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/user32/struct/window/control/notification_message/header'

    require_relative '../../../../../typedef/htreeitem'

    # https://docs.microsoft.com/en-us/windows/desktop/api/Commctrl/ns-commctrl-tagnmtreeviewa
    # https://docs.microsoft.com/en-us/windows/desktop/api/Commctrl/ns-commctrl-tagnmtreevieww
    module Comctl32
      class NMTVITEMCHANGE < FFIAdditions::Struct
        def hdr; end
        def hdr=(v); end
        def uChanged; end
        def uChanged=(v); end
        def hItem; end
        def hItem=(v); end
        def uStateNew; end
        def uStateNew=(v); end
        def uStateOld; end
        def uStateOld=(v); end
        def lParam; end
        def lParam=(v); end

        layout hdr:       User32::NMHDR,
               uChanged:  :uint,
               hItem:     :htreeitem,
               uStateNew: :uint,
               uStateOld: :uint,
               lParam:    :lparam
      end
    end
  end
end
