module WinFFI
  module Comctl32
    TabControlNotification = enum :tab_control_notification, [
        :FIRST,       0xFDDA,
        :LAST,        0xFDBC,
        :KEYDOWN,     0xFDDA,
        :SELCHANGE,   0xFDD9,
        :SELCHANGING, 0xFDD8,
        :GETOBJECT,   0xFDD7,
        :FOCUSCHANGE, 0xFDD6
    ]

    define_prefix(:TCN, TabControlNotification)
  end
end