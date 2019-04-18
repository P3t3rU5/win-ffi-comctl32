module WinFFI
  module Comctl32
    buffer = [
        :LEFT,                 0x0000,
        :RIGHT,                0x0001,
        :CENTER,               0x0002,
        :JUSTIFYMASK,          0x0003,
        :IMAGE,                0x0800,
        :BITMAP_ON_RIGHT,      0x1000,
        :COL_HAS_IMAGES,       0x8000
    ]

    buffer += [
        :FIXED_WIDTH,          0x00100,
        :NO_DPI_SCALE,         0x40000,
        :FIXED_RATIO,          0x80000,

        :LINE_BREAK,          0x100000,
        :FILL,                0x200000,
        :WRAP,                0x400000,
        :NO_TITLE,            0x800000,
        :TILE_PLACEMENTMASK,  0x300000,

        :SPLITBUTTON,         0x1000000
    ] if WINDOWS_VERSION >= :vista

    ListviewColumnFlagMT = enum :listview_column_flag_mt, buffer

    define_prefix(:LVCFMT, ListviewColumnFlagMT)
  end
end