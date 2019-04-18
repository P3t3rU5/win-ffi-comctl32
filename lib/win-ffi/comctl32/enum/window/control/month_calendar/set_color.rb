module WinFFI
  module Comctl32
    MonthCalendarSetColor = enum :month_calendar_set_color, [
      :BACKGROUND,   0,
      :TEXT,         1,
      :TITLEBK,      2,
      :TITLETEXT,    3,
      :MONTHBK,      4,
      :TRAILINGTEXT, 5,
    ]

    define_prefix(:MCSC, MonthCalendarSetColor)
  end
end
