module WinFFI
  module Comctl32
    buffer = [
      :FIRST,          0xFFFFFD1C,
      :LAST,           0xFFFFFD17,
      :FIRST2,         0xFFFFFD0F,
      :LAST2,          0xFFFFFD0F,
      :DATETIMECHANGE, 0xFFFFFD09,
      :DROPDOWN,       0xFFFFFD0E,
      :CLOSEUP,        0xFFFFFD0F,
    ]

    buffer += if WinFFI.ascii?
      [
        :USERSTRINGA,  0xFFFFFD0A,
        :WMKEYDOWNA,   0xFFFFFD0B,
        :FORMATA,      0xFFFFFD0C,
        :FORMATQUERYA, 0xFFFFFD0D,
      ]
    else
      [
        :USERSTRINGW,  0xFFFFFD17,
        :WMKEYDOWNW,   0xFFFFFD18,
        :FORMATW,      0xFFFFFD19,
        :FORMATQUERYW, 0xFFFFFD1A,
      ]
    end

    DateTimePickNotification = enum :date_time_pick_notification, buffer

    define_prefix(:DTN, DateTimePickNotification)
  end
end
