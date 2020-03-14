require_relative '../../../../enum/window/control/listview/group_metrics_flag'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-lvgroupmetrics
    class LVGROUPMETRICS < FFIAdditions::Struct
      attr_accessor :cbSize,
                    :mask,
                    :Left,
                    :Top,
                    :Right,
                    :Bottom,
                    :crLeft,
                    :crTop,
                    :crRight,
                    :crBottom,
                    :crHeader,
                    :crFooter

      layout cbSize:   :uint,
             mask:     ListviewGroupMetricsFlag,
             Left:     :uint,
             Top:      :uint,
             Right:    :uint,
             Bottom:   :uint,
             crLeft:   :colorref,
             crTop:    :colorref,
             crRight:  :colorref,
             crBottom: :colorref,
             crHeader: :colorref,
             crFooter: :colorref

      private :cbSize=
    end
  end
end

