module WinFFI
  module Comctl32
    ListviewTileViewInfoMask = enum :listview_tile_view_info_mask, [
        :TILESIZE,    0x00000001,
        :COLUMNS,     0x00000002,
        :LABELMARGIN, 0x00000004,
    ]

    define_prefix(:LVTVIM, ListviewTileViewInfoMask)
  end
end