module WinFFI
  if WINDOWS_VERSION >= :xp
    module Comctl32
      ButtonControlNotification = enum :button_control_notification, [
        :FIRST,         0xFFFFFB1E,
        :LAST,          0xFFFFFABA,

        :HOTITEMCHANGE, 0xFFFFFB1F,
        :DROPDOWN,      0xFFFFFB20
      ]

      define_prefix(:BCN, ButtonControlNotification)
    end
  end
end
