module WinFFI
  module Comctl32
    DateTimePickStyle = enum :date_time_pick_style, [
      :UPDOWN,                 0x0001,
      :SHOWNONE,               0x0002,
      :SHORTDATEFORMAT,        0x0000,
      :LONGDATEFORMAT,         0x0004,
      :SHORTDATECENTURYFORMAT, 0x000C,
      :TIMEFORMAT,             0x0009,
      :APPCANPARSE,            0x0010,
      :RIGHTALIGN,             0x0020,
    ]

    define_prefix(:DTS, DateTimePickStyle)
  end
end
