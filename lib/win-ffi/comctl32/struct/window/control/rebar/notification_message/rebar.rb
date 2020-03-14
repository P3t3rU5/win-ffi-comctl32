module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/user32/struct/window/control/notification_message/header'
    require_relative '../../../../../enum/window/control/rebar/notification_message'
    require_relative '../../../../../enum/window/control/rebar/band_style'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmrebar
      class NMREBAR < FFIAdditions::Struct
        attr_accessor :hdr,
                      :dwMask,
                      :uBand,
                      :fStyle,
                      :wID,
                      :lParam

        layout hdr:    User32::NMHDR,
               dwMask: RebarNotificationMessage,
               uBand:  :uint,
               fStyle: RebarBandStyle,
               wID:    :uint,
               lParam: :lparam
      end
    end
  end
end
