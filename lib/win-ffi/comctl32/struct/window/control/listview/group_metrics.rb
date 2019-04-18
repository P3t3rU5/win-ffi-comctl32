require_relative '../../../../enum/window/control/listview/group_metrics_flag'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-taglvgroupmetrics
    class LVGROUPMETRICS < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v) end
      def mask; end
      def mask=(v) end
      def Left; end
      def Left=(v) end
      def Top; end
      def Top=(v) end
      def Right; end
      def Right=(v) end
      def Bottom; end
      def Bottom=(v) end
      def crLeft; end
      def crLeft=(v) end
      def crTop; end
      def crTop=(v) end
      def crRight; end
      def crRight=(v) end
      def crBottom; end
      def crBottom=(v) end
      def crHeader; end
      def crHeader=(v) end
      def crFooter; end
      def crFooter=(v) end

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

