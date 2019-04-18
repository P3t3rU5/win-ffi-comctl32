module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      MonthCalendarGridInfoPart = enum :month_calendar_grid_info_part, [
        :CALENDARCONTROL,      0,
        :NEXT,                 1,
        :PREV,                 2,
        :FOOTER,               3,
        :CALENDAR,             4,
        :CALENDARHEADER,       5,
        :CALENDARBODY,         6,
        :CALENDARROW,          7,
        :CALENDARCELL,         8,
      ]

      define_prefix(:MCGIP, MonthCalendarGridInfoPart)
    end
  end
end
