module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/user32/struct/window/control/notification_message/header'
    require_relative '../../../../../enum/window/control/header/item'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tagnmhddispinfoa
      class NMHDDISPINFO < FFIAdditions::Struct
        def hdr; end
        def hdr=(v) end
        def iItem; end
        def iItem=(v) end
        def mask; end
        def mask=(v) end
        def pszText; end
        def pszText=(v) end
        def cchTextMax; end
        def cchTextMax=(v) end
        def iImage; end
        def iImage=(v) end
        def lParam; end
        def lParam=(v) end

        layout hdr:        User32::NMHDR,
               iItem:      :int,
               mask:       HeaderItem,
               pszText:    :string,
               cchTextMax: :int,
               iImage:     :int,
               lParam:     :lparam
      end
    end
  end
end