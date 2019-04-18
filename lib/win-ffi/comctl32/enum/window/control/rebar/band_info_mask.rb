module WinFFI
  module Comctl32
    buffer = [
        :STYLE,      0x00000001,
        :COLORS,     0x00000002,
        :TEXT,       0x00000004,
        :IMAGE,      0x00000008,
        :CHILD,      0x00000010,
        :CHILDSIZE,  0x00000020,
        :SIZE,       0x00000040,
        :BACKGROUND, 0x00000080,
        :ID,         0x00000100,
        :IDEALSIZE,  0x00000200,
        :LPARAM,     0x00000400,
        :HEADERSIZE, 0x00000800
    ]

    buffer += [:CHEVRONLOCATION, 0x00001000, :CHEVRONSTATE, 0x00002000] if WINDOWS_VERSION >= :vista

    RebarBandInfoMask = enum :rebar_band_info_mask, buffer

    define_prefix(:RBBIM, RebarBandInfoMask)
  end
end