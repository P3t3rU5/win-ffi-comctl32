module WinFFI
  module Comctl32
    NativeFontStyle = enum :native_font_style, [
      :EDIT,                0x0001,
      :STATIC,              0x0002,
      :LISTCOMBO,           0x0004,
      :BUTTON,              0x0008,
      :ALL,                 0x0010,
      :USEFONTASSOC,        0x0020
    ]

    define_prefix(:NFS, NativeFontStyle)
  end
end
