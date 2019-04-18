module WinFFI
  module Comctl32
    AnimateControlStyle = enum :animate_control_style, [
      :CENTER,      0x0001,
      :TRANSPARENT, 0x0002,
      :AUTOPLAY,    0x0004,
      :TIMER,       0x0008,
    ]

    define_prefix(:ACS, AnimateControlStyle)
  end
end
