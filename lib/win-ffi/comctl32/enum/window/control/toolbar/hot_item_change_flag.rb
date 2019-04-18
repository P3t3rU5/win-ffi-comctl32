require 'win-ffi/comctl32'

module WinFFI
  module Comctl32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/bb760456(v=vs.85).aspx
    HotItemChangeFlag = enum :hot_item_change_flag, [
        :OTHER,          0x00000000,
        :MOUSE,          0x00000001,
        :ARROWKEYS,      0x00000002,
        :ACCELERATOR,    0x00000004,
        :DUPACCEL,       0x00000008,
        :ENTERING,       0x00000010,
        :LEAVING,        0x00000020,
        :RESELECT,       0x00000040,
        :LMOUSE,         0x00000080,
        :TOGGLEDROPDOWN, 0x00000100
    ]

    define_prefix(:HICF, HotItemChangeFlag)
  end
end