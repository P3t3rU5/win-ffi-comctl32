module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      MonthCalendarGridInfoFlag = enum :month_calendar_grid_info_flag, [
        :DATE, 0x00000001,
        :RECT, 0x00000002,
        :NAME, 0x00000004
      ]

      define_prefix(:MCGIF, MonthCalendarGridInfoFlag)
    end
  end
end
