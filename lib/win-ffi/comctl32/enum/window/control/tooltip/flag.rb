module WinFFI
  module Comctl32
    TooltipInfoFlag = enum :tooltip_info_flag, [
        :IDISHWND,    0x0001,
        :CENTERTIP,   0x0002,
        :RTLREADING,  0x0004,
        :SUBCLASS,    0x0010,
        :TRACK,       0x0020,
        :ABSOLUTE,    0x0080,
        :TRANSPARENT, 0x0100,
        :PARSELINKS,  0x1000,
        :DI_SETITEM,  0x8000
    ]

    define_prefix(:TTF, TooltipInfoFlag)
  end
end