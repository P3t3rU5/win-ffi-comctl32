module WinFFI
  module Comctl32
    ListviewFindInfo = enum :listview_find_info, [
        :PARAM,     0x0001,
        :STRING,    0x0002,
        :SUBSTRING, 0x0004,
        :PARTIAL,   0x0008,
        :WRAP,      0x0020,
        :NEARESTXY, 0x0040,
    ]

    define_prefix(:LVFI, ListviewFindInfo)
  end
end