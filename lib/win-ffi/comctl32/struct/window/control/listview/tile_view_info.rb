require 'win-ffi/core/struct/rect'
require 'win-ffi/core/struct/size'

require_relative '../../../../enum/window/control/listview/tile_view_info_mask'
require_relative '../../../../enum/window/control/listview/tile_view_info_flag'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-lvtileviewinfo
    class LVTILEVIEWINFO < FFIAdditions::Struct
      attr_accessor :cbSize,
                    :dwMask,
                    :dwFlags,
                    :sizeTile,
                    :cLines,
                    :rcLabelMargin

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

