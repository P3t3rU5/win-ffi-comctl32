module WinFFI
  module Comctl32
    PagerKey = enum :pager_key, [
      :NONE,    0,
      :SHIFT,   1,
      :CONTROL, 2,
      :MENU,    4
    ]

    define_prefix(:PGK, PagerKey)
  end
end
