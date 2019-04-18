module WinFFI
  if WINDOWS_VERSION >= :vista

    require 'win-ffi/user32/struct/window/control/notification_message/header'

    module Comctl32
      UpDownNotification = enum :updown_notification, [
          :FIRST,    0xFFFFFD2F,
          :LAST,     0xFFFFFD27,

          :DELTAPOS, 0xFFFFFD2E
      ]

      define_prefix(:UDN, UpDownNotification)
    end
  end
end
