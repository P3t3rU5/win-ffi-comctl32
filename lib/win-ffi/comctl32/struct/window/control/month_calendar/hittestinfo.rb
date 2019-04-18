require 'win-ffi/core/struct/point'
require 'win-ffi/kernel32/struct/time/system_time'

require_relative '../../../../enum/window/control/month_calendar/hittest'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/Commctrl/ns-commctrl-mchittestinfo
    class MCHITTESTINFO < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v) end
      def pt; end
      def pt=(v) end
      def uHit; end
      def uHit=(v) end
      def st; end
      def st=(v) end

      buffer = {cbSize: :uint, pt: POINT, uHit: MonthCalendarHitTest, st: Kernel32::SYSTEMTIME}

      if WINDOWS_VERSION >= :vista
        require 'win-ffi/core/struct/rect'

        def rc; end
        def rc=(v) end
        def iOffset; end
        def iOffset=(v) end
        def iRow; end
        def iRow=(v) end
        def iCol; end
        def iCol=(v) end

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
