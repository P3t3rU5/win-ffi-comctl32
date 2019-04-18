module WinFFI
  module Comctl32
    FlatScrollBarProperties = enum :flat_scrollbar_properties, [
        :CYVSCROLL, 0x00000001,
        :CXHSCROLL, 0x00000002,
        :CYHSCROLL, 0x00000004,
        :CXVSCROLL, 0x00000008,
        :CXHTHUMB,  0x00000010,
        :CYVTHUMB,  0x00000020,
        :VBKGCOLOR, 0x00000040,
        :HBKGCOLOR, 0x00000080,
        :VSTYLE,    0x00000100,
        :HSTYLE,    0x00000200,
        :WINSTYLE,  0x00000400,
        :PALETTE,   0x00000800,
        :MASK,      0x00000FFF
    ]

    define_prefix(:WSB_PROP, FlatScrollBarProperties)
  end
end