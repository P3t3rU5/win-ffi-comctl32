module WinFFI
  if WINDOWS_VERSION >= :xp
    require_relative '../../../../enum/window/control/toolbar/metric_flag'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-tbmetrics
      class TBMETRICS < FFIAdditions::Struct
        attr_accessor :cbSize,
                      :dwMask,
                      :cxPad,
                      :cyPad,
                      :cxBarPad,
                      :cyBarPad,
                      :cxButtonSpacing,
                      :cyButtonSpacing

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