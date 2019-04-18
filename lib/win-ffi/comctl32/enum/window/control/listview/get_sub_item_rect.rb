module WinFFI
  module Comctl32
    ListViewGetSubItemRect = enum :listview_get_sub_item_rect, [
        :BOUNDS,       0,
        :ICON,         1,
        :LABEL,        2,
        :SELECTBOUNDS, 3,
    ]

    define_prefix(:LVIR, ListViewGetSubItemRect)
  end
end
