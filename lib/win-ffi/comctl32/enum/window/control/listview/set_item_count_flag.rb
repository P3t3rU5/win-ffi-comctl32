module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/Controls/lvm-setitemcount
    ListviewSetItemCountFlag = enum :listview_set_item_count_flag, [
        :NOINVALIDATEALL,  0x00000001,
        :NOSCROLL,         0x00000002,
    ]

    define_prefix(:LVSICF, ListviewSetItemCountFlag)
  end
end