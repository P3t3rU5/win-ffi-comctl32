module WinFFI
  module Comctl32
    PagerStyle = enum :pager_style, [
      :VERT,       0x00000000,
      :HORZ,       0x00000001,
      :AUTOSCROLL, 0x00000002,
      :DRAGNDROP,  0x00000004
    ]

    define_prefix(:PGS, PagerStyle)
  end
end
