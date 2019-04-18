module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/Controls/month-calendar-control-styles
    buffer = [
      :DAYSTATE,        0x0001,
      :MULTISELECT,     0x0002,
      :WEEKNUMBERS,     0x0004,
      :NOTODAYCIRCLE,   0x0008,
      :NOTODAY,         0x0010
    ]

    buffer += [
      :NOTRAILINGDATES,  0x0040,
      :SHORTDAYSOFWEEK,  0x0080,
      :NOSELCHANGEONNAV, 0x0100
    ] if WINDOWS_VERSION >= :vista

    MonthCalendarStyle = enum :month_calendar_style, buffer

    define_prefix(:MCS, MonthCalendarStyle)
  end
end
