module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-taglvgroupmetrics
      ListviewGetGroupRect = enum :listview_get_group_rect, [
          :GROUP,      0,
          :HEADER,     1,
          :LABEL,      2,
          :SUBSETLINK, 3
      ]

      define_prefix(:LVGGR, ListviewGetGroupRect)
    end
  end
end