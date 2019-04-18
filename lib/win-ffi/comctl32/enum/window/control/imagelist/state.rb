module WinFFI
  module Comctl32
    ImageListState = enum :imagelist_state, [
        :NORMAL,   0x00000000,
        :GLOW,     0x00000001,
        :SHADOW,   0x00000002,
        :SATURATE, 0x00000004,
        :ALPHA,    0x00000008
    ]

    define_prefix(:ILS, ImageListState)
  end
end