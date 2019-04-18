module WinFFI
  module Comctl32
    ComboboxExtendedNotificationFlag = enum :combobox_extended_notification_flag, [
        :KILLFOCUS, 1,
        :RETURN,    2,
        :ESCAPE,    3,
        :DROPDOWN,  4
    ]

    define_prefix(:CBENF, ComboboxExtendedNotificationFlag)
  end
end