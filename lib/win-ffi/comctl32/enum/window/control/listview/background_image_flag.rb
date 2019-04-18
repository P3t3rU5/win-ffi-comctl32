module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-taglvbkimagea
    buffer = [
        :SOURCE_NONE,     0x00000000,
        :SOURCE_HBITMAP,  0x00000001,
        :SOURCE_URL,      0x00000002,
        :SOURCE_MASK,     0x00000003,
        :STYLE_NORMAL,    0x00000000,
        :STYLE_TILE,      0x00000010,
        :STYLE_MASK,      0x00000010,
    ]

    buffer += [
        :FLAG_TILEOFFSET, 0x00000100,
        :TYPE_WATERMARK,  0x10000000,
        :FLAG_ALPHABLEND, 0x20000000,
    ] if WINDOWS_VERSION >= :xp

    ListviewBackgroundImageFlag = enum :listview_background_image_flag, buffer

    define_prefix(:LVBKIF, ListviewBackgroundImageFlag)
  end
end