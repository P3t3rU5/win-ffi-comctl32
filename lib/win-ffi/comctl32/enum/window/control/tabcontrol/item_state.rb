module WinFFI
  module Comctl32
    TabControlItemState = enum :tab_control_item_state, [
        :BUTTONPRESSED, 0x0001,
        :HIGHLIGHTED,   0x0002,
    ]

    define_prefix(:TCIS, TabControlItemState)
  end
end