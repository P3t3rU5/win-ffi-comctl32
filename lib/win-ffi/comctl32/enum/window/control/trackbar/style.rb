module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      buffer = [
          :AUTOTICKS,        0x0001,
          :VERT,             0x0002,
          :HORZ,             0x0000,
          :TOP,              0x0004,
          :BOTTOM,           0x0000,
          :LEFT,             0x0004,
          :RIGHT,            0x0000,
          :BOTH,             0x0008,
          :NOTICKS,          0x0010,
          :ENABLESELRANGE,   0x0020,
          :FIXEDLENGTH,      0x0040,
          :NOTHUMB,          0x0080,
          :TOOLTIPS,         0x0100,
          :REVERSED,         0x0200,

          :DOWNISLEFT,       0x0400,

          :NOTIFYBEFOREMOVE, 0x0800,
      ]

      buffer +=[:TRANSPARENTBKGND, 0x1000] if WINDOWS_VERSION >= :vista

      TrackbarStyle = enum :trackbar_style, buffer

      define_prefix(:TBS, TrackbarStyle)
    end
  end
end