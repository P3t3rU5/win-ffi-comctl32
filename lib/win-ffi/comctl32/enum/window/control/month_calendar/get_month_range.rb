module WinFFI
  module Comctl32
    GetMonthRange = enum :get_month_range, [
      :VISIBLE,  0,
      :DAYSTATE, 1
    ]

    define_prefix(:GMR, GetMonthRange)
  end
end
