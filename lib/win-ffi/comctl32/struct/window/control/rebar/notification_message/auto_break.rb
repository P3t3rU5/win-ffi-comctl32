module WinFFI
  if WINDOWS_VERSION >= :xp
    require 'win-ffi/user32/struct/window/control/notification_message/header'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tagnmrebarautobreak
      class NMREBARAUTOBREAK < FFIAdditions::Struct
        def hdr; end
        def hdr=(v) end
        def uBand; end
        def uBand=(v) end
        def wID; end
        def wID=(v) end
        def lParam; end
        def lParam=(v) end
        def uMsg; end
        def uMsg=(v) end
        def fStyleCurrent; end
        def fStyleCurrent=(v) end
        def fAutoBreak; end
        def fAutoBreak=(v) end

        layout hdr:           User32::NMHDR,
               uBand:         :uint,
               wID:           :uint,
               lParam:        :lparam,
               uMsg:          :uint,
               fStyleCurrent: :uint,
               fAutoBreak:    :bool
      end
    end
  end
end

