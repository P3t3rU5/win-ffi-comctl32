module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/user32/struct/window/control/notification_message/header'
    require_relative '../item'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tagnmhdfilterbtnclick
      class NMHEADER < FFIAdditions::Struct
        def hdr; end
        def hdr=(v) end
        def iItem; end
        def iItem=(v) end
        def iButton; end
        def iButton=(v) end
        def pitem; end
        def pitem=(v) end

        layout hdr:     User32::NMHDR,
               iItem:   :int,
               iButton: :int,
               pitem:   HDITEM.ptr #  *pitem
      end
    end
  end
end
