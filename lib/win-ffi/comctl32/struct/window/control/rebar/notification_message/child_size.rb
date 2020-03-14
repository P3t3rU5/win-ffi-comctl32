module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/core/struct/rect'
    require 'win-ffi/user32/struct/window/control/notification_message/header'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmrebarchildsize
      class NMREBARCHILDSIZE < FFIAdditions::Struct
        attr_accessor :hdr,
                      :uBand,
                      :wID,
                      :rcChild,
                      :rcBand

        layout hdr:     User32::NMHDR,
               uBand:   :uint,
               wID:     :uint,
               rcChild: RECT,
               rcBand:  RECT
      end
    end
  end
end