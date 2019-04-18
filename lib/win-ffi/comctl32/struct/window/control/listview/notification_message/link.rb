require 'win-ffi/user32/struct/window/control/notification_message/header'
require_relative '../../syslink/item'

module WinFFI
  if WINDOWS_VERSION >= :vista

    module Comctl32
      #if (NTDDI_VERSION >= NTDDI_VISTA)
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmlvlink
      class NMLVLINK < FFIAdditions::Struct
        def hdr; end
        def hdr=(v) end
        def link; end
        def link=(v) end
        def iItem; end
        def iItem=(v) end
        def iSubItem; end
        def iSubItem=(v) end

        layout hdr:      User32::NMHDR,
               link:     LITEM,
               iItem:    :int,
               iSubItem: :int
      end
    end
  end
end