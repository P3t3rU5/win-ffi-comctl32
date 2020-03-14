require 'win-ffi/core/struct/point'
require 'win-ffi/kernel32/struct/time/system_time'

require_relative '../../../../enum/window/control/month_calendar/hittest'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-mchittestinfo
    class MCHITTESTINFO < FFIAdditions::Struct
      attr_accessor :cbSize, :pt, :uHit, :st

      buffer = {cbSize: :uint, pt: POINT, uHit: MonthCalendarHitTest, st: Kernel32::SYSTEMTIME}

      if WINDOWS_VERSION >= :vista
        require 'win-ffi/core/struct/rect'

        attr_accessor :rc, :iOffset, :iRow, :iCol

        buffer.merge(rc: RECT, iOffset: :int, iRow: :int, iCol: :int)
      end

      layout buffer

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize=
    end
  end
end
