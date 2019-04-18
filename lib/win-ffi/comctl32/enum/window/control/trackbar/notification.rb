module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      TrackbarNotification = enum :trackbar_notification, [
          :LINEUP,        0,
          :LINEDOWN,      1,
          :PAGEUP,        2,
          :PAGEDOWN,      3,
          :THUMBPOSITION, 4,
          :THUMBTRACK,    5,
          :TOP,           6,
          :BOTTOM,        7,
          :ENDTRACK,      8,
      ]

      define_prefix(:TB, TrackbarNotification)
    end
  end
end