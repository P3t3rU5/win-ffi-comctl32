module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/core/struct/rect'
    require 'win-ffi/user32/struct/window/control/notification_message/header'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tagnmrbautosize
      class NMRBAUTOSIZE < FFIAdditions::Struct
        def hdr; end
        def hdr=(v) end
        def fChanged; end
        def fChanged=(v) end
        def rcTarget; end
        def rcTarget=(v) end
        def rcActual; end
        def rcActual=(v) end

        layout hdr:      User32::NMHDR,
               fChanged: :bool,
               rcTarget: RECT,
               rcActual: RECT
      end
    end
  end
end