module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/Controls/bumper-month-calendar-control-reference-notifications
    MonthCalendarNotification = enum :month_calendar_notification, [
      :FIRST,       0xFFFFFD16,
      :LAST,        0xFFFFFD10,
      :SELCHANGE,   0xFFFFFD13, # -749
      :GETDAYSTATE, 0xFFFFFD15, # -747
      :SELECT,      0xFFFFFD16, # -746
      :VIEWCHANGE,  0xFFFFFD12, # -750
    ]

    define_prefix(:MCN, MonthCalendarNotification)
  end
end
