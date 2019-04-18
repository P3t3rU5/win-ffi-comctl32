require 'win-ffi/core/struct/rect'
require 'win-ffi/core/struct/size'

require_relative '../../../../enum/window/control/listview/tile_view_info_mask'
require_relative '../../../../enum/window/control/listview/tile_view_info_flag'

module WinFFI
  module Comctl32
    class LVTILEVIEWINFO < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v) end
      def dwMask; end
      def dwMask=(v) end
      def dwFlags; end
      def dwFlags=(v) end
      def sizeTile; end
      def sizeTile=(v) end
      def cLines; end
      def cLines=(v) end
      def rcLabelMargin; end
      def rcLabelMargin=(v) end

      layout cbSize:        :uint,
             dwMask:        ListviewTileViewInfoMask,
             dwFlags:       ListviewTileViewInfoFlag,
             sizeTile:      SIZE,
             cLines:        :int,
             rcLabelMargin: RECT

      private :cbSize=
    end
  end
end

