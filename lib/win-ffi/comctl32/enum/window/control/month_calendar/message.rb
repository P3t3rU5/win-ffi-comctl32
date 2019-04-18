module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/Controls/bumper-month-calendar-control-reference-messages
    buffer = [
      :FIRST,             0x1000,
      :GETCURSEL,         0x1001,
      :SETCURSEL,         0x1002,
      :GETMAXSELCOUNT,    0x1003,
      :SETMAXSELCOUNT,    0x1004,
      :GETSELRANGE,       0x1005,
      :SETSELRANGE,       0x1006,
      :GETMONTHRANGE,     0x1007,
      :SETDAYSTATE,       0x1008,
      :GETMINREQRECT,     0x1009,
      :SETCOLOR,          0x100A,
      :GETCOLOR,          0x100B,
      :SETTODAY,          0x100C,
      :GETTODAY,          0x100D,
      :HITTEST,           0x100E,
      :SETFIRSTDAYOFWEEK, 0x100F,
      :GETFIRSTDAYOFWEEK, 0x1010,
      :GETRANGE,          0x1011,
      :SETRANGE,          0x1012,
      :GETMONTHDELTA,     0x1013,
      :SETMONTHDELTA,     0x1014,
      :GETMAXTODAYWIDTH,  0x1015,
      :SETUNICODEFORMAT,  0x2005,
      :GETUNICODEFORMAT,  0x2006,
    ]

    if WINDOWS_VERSION >= :vista
      buffer += [
        :GETCURRENTVIEW,      0x1016,
        :GETCALENDARCOUNT,    0x1017,
        :GETCALENDARGRIDINFO, 0x1018,
        :GETCALID,            0x101B,
        :SETCALID,            0x101C,
        :SIZERECTTOMIN,       0x101D,
        :SETCALENDARBORDER,   0x101E,
        :GETCALENDARBORDER,   0x101F,
        :SETCURRENTVIEW,      0x1020,
      ]
    end

    MonthCalendarMessage = enum :month_calendar_message, buffer

    define_prefix(:MCM, MonthCalendarMessage)
  end
end
