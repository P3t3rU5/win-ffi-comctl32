module WinFFI
  module Comctl32
    buffer = [
        :FMT,     0x0001,
        :WIDTH,   0x0002,
        :TEXT,    0x0004,
        :SUBITEM, 0x0008,
        :IMAGE,   0x0010,
        :ORDER,   0x0020
    ]

    buffer += [:MINWIDTH, 0x0040, :DEFAULTWIDTH, 0x0080, :IDEALWIDTH, 0x0100] if WINDOWS_VERSION >= :vista

    ListviewColumnFlag = enum :listview_column_flag, buffer

    define_prefix(:LVCF, ListviewColumnFlag)
  end
end