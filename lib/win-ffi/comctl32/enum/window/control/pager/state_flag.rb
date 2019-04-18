module WinFFI
  module Comctl32
    PagerStateFlag = enum :pager_state_flag, [
      :INVISIBLE, 0,
      :NORMAL,    1,
      :GRAYED,    2,
      :DEPRESSED, 4,
      :HOT,       8
    ]

    define_prefix(:PGF, PagerStateFlag)
  end
end
