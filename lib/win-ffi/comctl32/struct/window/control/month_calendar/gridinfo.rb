module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/core/struct/rect'
    require 'win-ffi/kernel32/struct/time/system_time'

    require_relative '../../../../enum/window/control/month_calendar/grid_info_part'
    require_relative '../../../../enum/window/control/month_calendar/grid_info_flag'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-mcgridinfo
      class MCGRIDINFO < FFIAdditions::Struct
        def cbSize; end
        def cbSize=(v) end
        def dwPart; end
        def dwPart=(v) end
        def dwFlags; end
        def dwFlags=(v) end
        def iCalendar; end
        def iCalendar=(v) end
        def iRow; end
        def iRow=(v) end
        def iCol; end
        def iCol=(v) end
        def bSelected; end
        def bSelected=(v) end
        def stStart; end
        def stStart=(v) end
        def stEnd; end
        def stEnd=(v) end
        def rc; end
        def rc=(v) end
        def pszName; end
        def pszName=(v) end
        def cchName; end
        def cchName=(v) end

        layout cbSize:    :uint,
               dwPart:    MonthCalendarGridInfoPart,
               dwFlags:   MonthCalendarGridInfoFlag,
               iCalendar: :int,
               iRow:      :int,
               iCol:      :int,
               bSelected: :bool,
               stStart:   Kernel32::SYSTEMTIME,
               stEnd:     Kernel32::SYSTEMTIME,
               rc:        RECT,
               pszName:   :string,
               cchName:   :size_t

        def initialize
          super
          self[:cbSize] = self.size
        end
      end
    end
  end
end
