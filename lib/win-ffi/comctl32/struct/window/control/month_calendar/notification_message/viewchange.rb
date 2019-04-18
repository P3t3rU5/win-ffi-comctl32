module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/user32/struct/window/control/notification_message/header'

    require_relative '../../../../../enum/window/control/month_calendar/view'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmviewchange
      class NMVIEWCHANGE < FFIAdditions::Struct
        def nmhdr; end
        def nmhdr=(v) end
        def dwOldView; end
        def dwOldView=(v) end
        def dwNewView; end
        def dwNewView=(v) end

        layout nmhdr:     User32::NMHDR,
               dwOldView: MonthCalendarView,
               dwNewView: MonthCalendarView
      end
    end
  end
end
