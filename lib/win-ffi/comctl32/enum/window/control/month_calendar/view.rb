module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      MonthCalendarView = enum :month_calendar_view, [
        :MAX,        3,
        :MONTH,      0,
        :YEAR,       1,
        :DECADE,     2,
        :CENTURY,    3,
      ]

      define_prefix(:MCMV, MonthCalendarView)
    end
  end
end
