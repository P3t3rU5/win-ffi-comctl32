module WinFFI
  module Comctl32
    buffer = [
      :TITLE,            0x00010000,
      :CALENDAR,         0x00020000,
      :TODAYLINK,        0x00030000,
      :NEXT,             0x01000000,
      :PREV,             0x02000000,
      :NOWHERE,          0x00000000,
      :TITLEBK,          0x00010000,
      :TITLEMONTH,       0x00010001,
      :TITLEYEAR,        0x00010002,
      :TITLEBTNNEXT,     0x01010003,
      :TITLEBTNPREV,     0x02010003,
      :CALENDARBK,       0x00020000,
      :CALENDARDATE,     0x00020001,
      :CALENDARDATENEXT, 0x01020001,
      :CALENDARDATEPREV, 0x02020001,
      :CALENDARDAY,      0x00020002,
      :CALENDARWEEKNUM,  0x00020003,
      :CALENDARDATEMIN,  0x00020004,
      :CALENDARDATEMAX,  0x00020005
    ]

    buffer += [:CALENDARCONTROL, 0x00100000] if WINDOWS_VERSION >= :vista

    MonthCalendarHitTest = enum :month_calendar_hit_test, buffer

    define_prefix(:MCHT, MonthCalendarHitTest)
  end
end
