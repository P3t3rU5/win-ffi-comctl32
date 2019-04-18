module WinFFI
  if WINDOWS_VERSION >= :xp
    module Comctl32
      ListViewGroupAlign = enum :listview_group_align, [
          :HEADER_LEFT,   0x00000001,
          :HEADER_CENTER, 0x00000002,
          :HEADER_RIGHT,  0x00000004,
          :FOOTER_LEFT,   0x00000008,
          :FOOTER_CENTER, 0x00000010,
          :FOOTER_RIGHT,  0x00000020,
      ]

      define_prefix(:LGVA, ListViewGroupAlign)
    end
  end
end