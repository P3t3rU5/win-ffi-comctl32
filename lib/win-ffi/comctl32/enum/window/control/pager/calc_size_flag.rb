module WinFFI
  module Comctl32
    PagerCalcSizeFlag = enum :pager_calc_size_flag, [:CALCWIDTH, 1, :CALCHEIGHT, 2]

    define_prefix(:PGF, PagerCalcSizeFlag)
  end
end
