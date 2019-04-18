module WinFFI
  module Comctl32
    buffer = [
        :AUTOSIZE,    0x00000000,
        :FIXEDWIDTH,  0x00000001,
        :FIXEDHEIGHT, 0x00000002,
        :FIXEDSIZE,   0x00000003,
    ]

    buffer += [:EXTENDED, 0x00000004] if WINDOWS_VERSION >= :vista

    ListviewTileViewInfoFlag = enum :listview_tile_view_info_flag, buffer

    define_prefix(:LVTVIF, ListviewTileViewInfoFlag)
  end
end