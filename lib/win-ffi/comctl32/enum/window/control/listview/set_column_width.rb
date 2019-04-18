module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_setcolumnwidth
    ListviewSetColumnWidth = enum :listview_set_column_width, [
        :AUTOSIZE,           -1,
        :AUTOSIZE_USEHEADER, -2,
    ]

    define_prefix(:LVSCW, ListviewSetColumnWidth)
  end
end