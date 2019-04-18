module WinFFI
  module Comctl32
    PagerNotification = enum :pager_notification, [
      :FIRST,         0xFFFFFC7C,
      :LAST,          0xFFFFFC4A,
      :SCROLL,        0xFFFFFC7B,
      :CALCSIZE,      0xFFFFFC7A,
      :HOTITEMCHANGE, 0xFFFFFC79
    ]

    define_prefix(:PGN, PagerNotification)
  end
end
