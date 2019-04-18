module WinFFI
  module Comctl32
    ListviewGroupMetricsFlag = enum :listview_group_metrics_flag, [
        :NONE,        0x00000000,
        :BORDERSIZE,  0x00000001,
        :BORDERCOLOR, 0x00000002,
        :TEXTCOLOR,   0x00000004,
    ]

    define_prefix(:LVGMF, ListviewGroupMetricsFlag)
  end
end