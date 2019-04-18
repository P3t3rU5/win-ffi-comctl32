module WinFFI
  module Comctl32
    TooltipDelayTime = enum :tooltip_delay_time, [
        :AUTOMATIC, 0,
        :RESHOW,    1,
        :AUTOPOP,   2,
        :INITIAL,   3
    ]

    define_prefix(:TTDT, TooltipDelayTime)
  end
end