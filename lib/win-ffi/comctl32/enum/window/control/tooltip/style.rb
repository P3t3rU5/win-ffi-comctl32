module WinFFI
  module Comctl32
    buffer = [
        :ALWAYSTIP, 0x01,
        :NOPREFIX,  0x02,
        :NOANIMATE, 0x10,
        :NOFADE,    0x20,
        :BALLOON,   0x40,
        :CLOSE,     0x80
    ]

    buffer += [:USEVISUALSTYLE, 0x100] if WINDOWS_VERSION >= :vista

    TooltipStyle = enum :tooltip_style, buffer

    define_prefix(:TTS, TooltipStyle)
  end
end