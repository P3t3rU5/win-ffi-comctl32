module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/user32/struct/window/control/notification_message/header'
    require 'win-ffi/core/struct/rect'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmrebarchevron
      class NMREBARCHEVRON < FFIAdditions::Struct
        attr_accessor :hdr,
                      :uBand,
                      :wID,
                      :lParam,
                      :rc,
                      :lParamNM

        layout hdr:      User32::NMHDR,
               uBand:    :uint,
               wID:      :uint,
               lParam:   :lparam,
               rc:       RECT,
               lParamNM: :lparam

      end
    end
  end
end