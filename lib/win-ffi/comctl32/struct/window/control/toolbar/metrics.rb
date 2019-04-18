module WinFFI
  if WINDOWS_VERSION >= :xp
    require_relative '../../../../enum/window/control/toolbar/metric_flag'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tbmetrics
      class TBMETRICS < FFIAdditions::Struct
        def cbSize; end
        def cbSize=(v) end
        def dwMask; end
        def dwMask=(v) end
        def cxPad; end
        def cxPad=(v) end
        def cyPad; end
        def cyPad=(v) end
        def cxBarPad; end
        def cxBarPad=(v) end
        def cyBarPad; end
        def cyBarPad=(v) end
        def cxButtonSpacing; end
        def cxButtonSpacing=(v) end
        def cyButtonSpacing; end
        def cyButtonSpacing=(v) end

        layout cbSize:          :uint,
               dwMask:          ToolbarMetricFlag,
               cxPad:           :int,
               cyPad:           :int,
               cxBarPad:        :int,
               cyBarPad:        :int,
               cxButtonSpacing: :int,
               cyButtonSpacing: :int

        def initialize
          super
          self.cbSize = self.size
        end

        private :cbSize=
      end
    end
  end
end