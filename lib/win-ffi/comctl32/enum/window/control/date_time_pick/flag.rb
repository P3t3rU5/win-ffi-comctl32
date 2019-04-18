module WinFFI
  module Comctl32
    DateTimePickFlag = enum :date_time_pick_flag, [
      :ERROR, -1,
      :VALID,  0,
      :NONE,   1
    ]

    define_prefix(:GDT, DateTimePickFlag)
  end
end
