module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/core/struct/rect'
    require 'win-ffi/kernel32/struct/time/system_time'

    require_relative '../../../../enum/window/control/month_calendar/grid_info_part'
    require_relative '../../../../enum/window/control/month_calendar/grid_info_flag'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-mcgridinfo
      class MCGRIDINFO < FFIAdditions::Struct
        attr_accessor :cbSize,
                      :dwPart,
                      :dwFlags,
                      :iCalendar,
                      :iRow,
                      :iCol,
                      :bSelected,
                      :stStart,
                      :stEnd,
                      :rc,
                      :pszName,
                      :cchName

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
