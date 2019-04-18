module WinFFI
  module Comctl32
    PagerScrollFlag = enum :pager_scroll_flag, [
      :SCROLLUP,    1,
      :SCROLLDOWN,  2,
      :SCROLLLEFT,  4,
      :SCROLLRIGHT, 8
    ]

    define_prefix(:PGF, PagerScrollFlag)
  end
end
