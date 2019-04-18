module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/Controls/lvm-setview
    ListviewSetView = enum :listview_set_view, [
        :ICON,      0x0000,
        :DETAILS,   0x0001,
        :SMALLICON, 0x0002,
        :LIST,      0x0003,
        :TILE,      0x0004,
        :MAX,       0x0004
    ]

    define_prefix(:LV_VIEW, ListviewSetView)
  end
end