module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-taglvitema
      buffer = [
          :TEXT,        0x00000001,
          :IMAGE,       0x00000002,
          :PARAM,       0x00000004,
          :STATE,       0x00000008,
          :INDENT,      0x00000010,
          :NORECOMPUTE, 0x00000800
      ]

      if WINDOWS_VERSION >= :xp
        buffer += [
            :GROUPID, 0x00000100,
            :COLUMNS, 0x00000200
        ]
        buffer += [:COLFMT, 0x00010000] if WINDOWS_VERSION >= :vista
      end

      ListViewItemFlag = enum :listview_item_flag, buffer

      define_prefix(:LVIF, ListViewItemFlag)
    end
  end
end