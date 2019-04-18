module WinFFI
  module Comctl32
    RebarBandStyle = enum :rebar_band_style, [
        :BREAK,          0x00000001,
        :FIXEDSIZE,      0x00000002,
        :CHILDEDGE,      0x00000004,
        :HIDDEN,         0x00000008,
        :NOVERT,         0x00000010,
        :FIXEDBMP,       0x00000020,
        :VARIABLEHEIGHT, 0x00000040,
        :GRIPPERALWAYS,  0x00000080,
        :NOGRIPPER,      0x00000100,
        :USECHEVRON,     0x00000200,
        :HIDETITLE,      0x00000400,
        :TOPALIGN,       0x00000800
    ]

    define_prefix(:RBBS, RebarBandStyle)
  end
end