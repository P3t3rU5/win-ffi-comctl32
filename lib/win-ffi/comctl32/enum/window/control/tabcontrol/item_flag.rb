module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tcitemheadera
    TabControlItemFlag = enum :tab_control_item_flag, [
        :TEXT,       0x0001,
        :IMAGE,      0x0002,
        :RTLREADING, 0x0004,
        :PARAM,      0x0008,
        :STATE,      0x0010
    ]

    define_prefix(:TCIF, TabControlItemFlag)
  end
end