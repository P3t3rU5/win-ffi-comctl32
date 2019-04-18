module WinFFI
  module Comctl32
    TabControlHitTest = enum :tab_control_hit_test, [
      :NOWHERE,     0x0001,
      :ONITEMICON,  0x0002,
      :ONITEMLABEL, 0x0004,
      :ONITEM,      0x0006
    ]

    define_prefix(:TCHT, TabControlHitTest)
  end
end