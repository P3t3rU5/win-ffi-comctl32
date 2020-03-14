module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/user32/struct/window/control/notification_message/header'

    require_relative '../../../../../enum/window/control/month_calendar/view'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmviewchange
      class NMVIEWCHANGE < FFIAdditions::Struct
        attr_accessor :nmhdr, :dwOldView, :dwNewView

        layout nmhdr:     User32::NMHDR,
               dwOldView: MonthCalendarView,
               dwNewView: MonthCalendarView
      end
    end
  end
end
