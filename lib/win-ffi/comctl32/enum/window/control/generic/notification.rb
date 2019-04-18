module WinFFI
  module Comctl32
    buffer = [
      :FIRST,           0,
      :LAST,            0xFF9D,
      :OUTOFMEMORY,     0xFFFF,
      :CLICK,           0xFFFE,
      :DBLCLK,          0xFFFD,
      :RETURN,          0xFFFC,
      :RCLICK,          0xFFFB,
      :RDBLCLK,         0xFFFA,
      :SETFOCUS,        0xFFF9,
      :KILLFOCUS,       0xFFF8,
      :CUSTOMDRAW,      0xFFF4,
      :HOVER,           0xFFF3,
      :NCHITTEST,       0xFFF2,
      :KEYDOWN,         0xFFF1,
      :RELEASEDCAPTURE, 0xFFF0,
      :SETCURSOR,       0xFFEF,
      :CHAR,            0xFFEE,
      :TOOLTIPSCREATED, 0xFFED,
      :LDOWN,           0xFFEC,
      :RDOWN,           0xFFEB,
      :THEMECHANGED,    0xFFEA,
    ]

    buffer += [:FONTCHANGED, 0xFFE9, :CUSTOMTEXT, 0xFFE8, :TVSTATEIMAGECHANGING, 0xFFE8] if WINDOWS_VERSION >= :vista

    GenericNotificationMessage = enum :generic_notification_message, buffer

    define_prefix(:NM, GenericNotificationMessage)
  end
end
