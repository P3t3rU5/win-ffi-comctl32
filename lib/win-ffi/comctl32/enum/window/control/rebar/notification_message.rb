module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      RebarNotificationMessage = enum :rebar_notification_message, [
          :ID,     0x00000001,
          :STYLE,  0x00000002,
          :LPARAM, 0x00000004
      ]

      define_prefix(:RBNM, RebarNotificationMessage)
    end
  end
end