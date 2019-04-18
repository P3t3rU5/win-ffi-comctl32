require 'win-ffi/comctl32'

module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      UpDownStyle = enum :updown_style, [
        :WRAP,        0x0001,
        :SETBUDDYINT, 0x0002,
        :ALIGNRIGHT,  0x0004,
        :ALIGNLEFT,   0x0008,
        :AUTOBUDDY,   0x0010,
        :ARROWKEYS,   0x0020,
        :HORZ,        0x0040,
        :NOTHOUSANDS, 0x0080,
        :HOTTRACK,    0x0100
      ]

      define_prefix(:UDS, UpDownStyle)
    end
  end
end
